
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_5__ {int txok; int txunder; } ;
struct slgt_info {int tx_active; int drop_rts_on_tx_done; int pending_bh; TYPE_4__ port; scalar_t__ netcount; int signals; TYPE_2__ params; int tx_timer; TYPE_1__ icount; int device_name; } ;
struct TYPE_7__ {scalar_t__ hw_stopped; scalar_t__ stopped; } ;


 int BH_TRANSMIT ;
 unsigned short BIT2 ;
 int DBGISR (char*) ;
 scalar_t__ IRQ_TXDATA ;
 unsigned short IRQ_TXIDLE ;
 unsigned short IRQ_TXUNDER ;
 scalar_t__ MGSL_MODE_ASYNC ;
 int SerialSignal_RTS ;
 int TCR ;
 int del_timer (int *) ;
 int hdlcdev_tx_done (struct slgt_info*) ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 int set_signals (struct slgt_info*) ;
 int slgt_irq_off (struct slgt_info*,scalar_t__) ;
 int tdma_reset (struct slgt_info*) ;
 int tx_start (struct slgt_info*) ;
 int tx_stop (struct slgt_info*) ;
 scalar_t__ unsent_tbufs (struct slgt_info*) ;
 int update_tx_timer (struct slgt_info*) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;

__attribute__((used)) static void isr_txeom(struct slgt_info *info, unsigned short status)
{
 DBGISR(("%s txeom status=%04x\n", info->device_name, status));

 slgt_irq_off(info, IRQ_TXDATA + IRQ_TXIDLE + IRQ_TXUNDER);
 tdma_reset(info);
 if (status & IRQ_TXUNDER) {
  unsigned short val = rd_reg16(info, TCR);
  wr_reg16(info, TCR, (unsigned short)(val | BIT2));
  wr_reg16(info, TCR, val);
 }

 if (info->tx_active) {
  if (info->params.mode != MGSL_MODE_ASYNC) {
   if (status & IRQ_TXUNDER)
    info->icount.txunder++;
   else if (status & IRQ_TXIDLE)
    info->icount.txok++;
  }

  if (unsent_tbufs(info)) {
   tx_start(info);
   update_tx_timer(info);
   return;
  }
  info->tx_active = 0;

  del_timer(&info->tx_timer);

  if (info->params.mode != MGSL_MODE_ASYNC && info->drop_rts_on_tx_done) {
   info->signals &= ~SerialSignal_RTS;
   info->drop_rts_on_tx_done = 0;
   set_signals(info);
  }






  {
   if (info->port.tty && (info->port.tty->stopped || info->port.tty->hw_stopped)) {
    tx_stop(info);
    return;
   }
   info->pending_bh |= BH_TRANSMIT;
  }
 }
}
