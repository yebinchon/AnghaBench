
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct nozomi {int last_ier; int spin_mutex; TYPE_2__* port; int flip; int reg_ier; int reg_fcr; TYPE_1__* pdev; int reg_iir; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int port; int toggle_dl; } ;
struct TYPE_3__ {int dev; } ;


 int APP1_DL ;
 int APP1_UL ;
 int APP2_DL ;
 int APP2_UL ;
 int CTRL_DL ;
 int CTRL_UL ;
 int DBG1 (char*) ;
 int DBG4 (char*,int ,int,int) ;
 int DIAG_DL ;
 int DIAG_DL1 ;
 int DIAG_DL2 ;
 int DIAG_UL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MDM_DL ;
 int MDM_DL1 ;
 int MDM_DL2 ;
 int MDM_UL ;
 unsigned int NOZOMI_MAX_PORTS ;
 size_t PORT_APP1 ;
 size_t PORT_APP2 ;
 size_t PORT_DIAG ;
 size_t PORT_MDM ;
 int RESET ;
 int dev_err (int *,char*) ;
 int handle_data_dl (struct nozomi*,size_t,int *,int,int ,int ) ;
 int handle_data_ul (struct nozomi*,size_t,int) ;
 int interrupt2str (int) ;
 int nozomi_read_config_table (struct nozomi*) ;
 int readw (int ) ;
 scalar_t__ receive_data (size_t,struct nozomi*) ;
 int receive_flow_control (struct nozomi*) ;
 scalar_t__ send_data (size_t,struct nozomi*) ;
 scalar_t__ send_flow_control (struct nozomi*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (unsigned int,int *) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ unlikely (int) ;
 int writew (int,int ) ;

__attribute__((used)) static irqreturn_t interrupt_handler(int irq, void *dev_id)
{
 struct nozomi *dc = dev_id;
 unsigned int a;
 u16 read_iir;

 if (!dc)
  return IRQ_NONE;

 spin_lock(&dc->spin_mutex);
 read_iir = readw(dc->reg_iir);


 if (read_iir == (u16)-1)
  goto none;




 read_iir &= dc->last_ier;

 if (read_iir == 0)
  goto none;


 DBG4("%s irq:0x%04X, prev:0x%04X", interrupt2str(read_iir), read_iir,
  dc->last_ier);

 if (read_iir & RESET) {
  if (unlikely(!nozomi_read_config_table(dc))) {
   dc->last_ier = 0x0;
   writew(dc->last_ier, dc->reg_ier);
   dev_err(&dc->pdev->dev, "Could not read status from "
    "card, we should disable interface\n");
  } else {
   writew(RESET, dc->reg_fcr);
  }

  goto exit_handler;
 }
 if (read_iir & CTRL_UL) {
  DBG1("CTRL_UL");
  dc->last_ier &= ~CTRL_UL;
  writew(dc->last_ier, dc->reg_ier);
  if (send_flow_control(dc)) {
   writew(CTRL_UL, dc->reg_fcr);
   dc->last_ier = dc->last_ier | CTRL_UL;
   writew(dc->last_ier, dc->reg_ier);
  }
 }
 if (read_iir & CTRL_DL) {
  receive_flow_control(dc);
  writew(CTRL_DL, dc->reg_fcr);
 }
 if (read_iir & MDM_DL) {
  if (!handle_data_dl(dc, PORT_MDM,
    &(dc->port[PORT_MDM].toggle_dl), read_iir,
    MDM_DL1, MDM_DL2)) {
   dev_err(&dc->pdev->dev, "MDM_DL out of sync!\n");
   goto exit_handler;
  }
 }
 if (read_iir & MDM_UL) {
  if (!handle_data_ul(dc, PORT_MDM, read_iir)) {
   dev_err(&dc->pdev->dev, "MDM_UL out of sync!\n");
   goto exit_handler;
  }
 }
 if (read_iir & DIAG_DL) {
  if (!handle_data_dl(dc, PORT_DIAG,
    &(dc->port[PORT_DIAG].toggle_dl), read_iir,
    DIAG_DL1, DIAG_DL2)) {
   dev_err(&dc->pdev->dev, "DIAG_DL out of sync!\n");
   goto exit_handler;
  }
 }
 if (read_iir & DIAG_UL) {
  dc->last_ier &= ~DIAG_UL;
  writew(dc->last_ier, dc->reg_ier);
  if (send_data(PORT_DIAG, dc)) {
   writew(DIAG_UL, dc->reg_fcr);
   dc->last_ier = dc->last_ier | DIAG_UL;
   writew(dc->last_ier, dc->reg_ier);
  }
 }
 if (read_iir & APP1_DL) {
  if (receive_data(PORT_APP1, dc))
   writew(APP1_DL, dc->reg_fcr);
 }
 if (read_iir & APP1_UL) {
  dc->last_ier &= ~APP1_UL;
  writew(dc->last_ier, dc->reg_ier);
  if (send_data(PORT_APP1, dc)) {
   writew(APP1_UL, dc->reg_fcr);
   dc->last_ier = dc->last_ier | APP1_UL;
   writew(dc->last_ier, dc->reg_ier);
  }
 }
 if (read_iir & APP2_DL) {
  if (receive_data(PORT_APP2, dc))
   writew(APP2_DL, dc->reg_fcr);
 }
 if (read_iir & APP2_UL) {
  dc->last_ier &= ~APP2_UL;
  writew(dc->last_ier, dc->reg_ier);
  if (send_data(PORT_APP2, dc)) {
   writew(APP2_UL, dc->reg_fcr);
   dc->last_ier = dc->last_ier | APP2_UL;
   writew(dc->last_ier, dc->reg_ier);
  }
 }

exit_handler:
 spin_unlock(&dc->spin_mutex);

 for (a = 0; a < NOZOMI_MAX_PORTS; a++)
  if (test_and_clear_bit(a, &dc->flip))
   tty_flip_buffer_push(&dc->port[a].port);

 return IRQ_HANDLED;
none:
 spin_unlock(&dc->spin_mutex);
 return IRQ_NONE;
}
