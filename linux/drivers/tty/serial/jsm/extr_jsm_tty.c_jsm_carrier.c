
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsm_channel {int ch_mistat; int ch_c_cflag; int ch_flags; int ch_flags_wait; struct jsm_board* ch_bd; } ;
struct jsm_board {int pci_dev; } ;


 int CARR ;
 int CH_CD ;
 int CH_FCAR ;
 int CLOCAL ;
 int UART_MSR_DCD ;
 int jsm_dbg (int ,int *,char*,...) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void jsm_carrier(struct jsm_channel *ch)
{
 struct jsm_board *bd;

 int virt_carrier = 0;
 int phys_carrier = 0;

 jsm_dbg(CARR, &ch->ch_bd->pci_dev, "start\n");

 bd = ch->ch_bd;
 if (!bd)
  return;

 if (ch->ch_mistat & UART_MSR_DCD) {
  jsm_dbg(CARR, &ch->ch_bd->pci_dev, "mistat: %x D_CD: %x\n",
   ch->ch_mistat, ch->ch_mistat & UART_MSR_DCD);
  phys_carrier = 1;
 }

 if (ch->ch_c_cflag & CLOCAL)
  virt_carrier = 1;

 jsm_dbg(CARR, &ch->ch_bd->pci_dev, "DCD: physical: %d virt: %d\n",
  phys_carrier, virt_carrier);




 if (((ch->ch_flags & CH_FCAR) == 0) && (virt_carrier == 1)) {






  jsm_dbg(CARR, &ch->ch_bd->pci_dev, "carrier: virt DCD rose\n");

  if (waitqueue_active(&(ch->ch_flags_wait)))
   wake_up_interruptible(&ch->ch_flags_wait);
 }




 if (((ch->ch_flags & CH_CD) == 0) && (phys_carrier == 1)) {






  jsm_dbg(CARR, &ch->ch_bd->pci_dev,
   "carrier: physical DCD rose\n");

  if (waitqueue_active(&(ch->ch_flags_wait)))
   wake_up_interruptible(&ch->ch_flags_wait);
 }
 if ((virt_carrier == 0) && ((ch->ch_flags & CH_CD) != 0)
   && (phys_carrier == 0)) {
  if (waitqueue_active(&(ch->ch_flags_wait)))
   wake_up_interruptible(&ch->ch_flags_wait);
 }




 if (virt_carrier == 1)
  ch->ch_flags |= CH_FCAR;
 else
  ch->ch_flags &= ~CH_FCAR;

 if (phys_carrier == 1)
  ch->ch_flags |= CH_CD;
 else
  ch->ch_flags &= ~CH_CD;
}
