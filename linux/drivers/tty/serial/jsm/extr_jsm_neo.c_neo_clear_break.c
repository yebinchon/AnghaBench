
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_flags; int ch_lock; TYPE_2__* ch_bd; TYPE_1__* ch_neo_uart; } ;
struct TYPE_4__ {int pci_dev; } ;
struct TYPE_3__ {int lcr; } ;


 int CH_BREAK_SENDING ;
 int IOCTL ;
 int UART_LCR_SBC ;
 int jiffies ;
 int jsm_dbg (int ,int *,char*,int ) ;
 int neo_pci_posting_flush (TYPE_2__*) ;
 int readb (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,int *) ;

__attribute__((used)) static void neo_clear_break(struct jsm_channel *ch)
{
 unsigned long lock_flags;

 spin_lock_irqsave(&ch->ch_lock, lock_flags);


 if (ch->ch_flags & CH_BREAK_SENDING) {
  u8 temp = readb(&ch->ch_neo_uart->lcr);
  writeb((temp & ~UART_LCR_SBC), &ch->ch_neo_uart->lcr);

  ch->ch_flags &= ~(CH_BREAK_SENDING);
  jsm_dbg(IOCTL, &ch->ch_bd->pci_dev,
   "clear break Finishing UART_LCR_SBC! finished: %lx\n",
   jiffies);


  neo_pci_posting_flush(ch->ch_bd);
 }
 spin_unlock_irqrestore(&ch->ch_lock, lock_flags);
}
