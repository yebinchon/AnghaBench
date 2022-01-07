
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; struct gsm_mux* disc_data; } ;
struct gsm_mux {scalar_t__ tx_bytes; int tx_lock; } ;


 int TTY_DO_WRITE_WAKEUP ;
 scalar_t__ TX_THRESH_LO ;
 int clear_bit (int ,int *) ;
 int gsm_data_kick (struct gsm_mux*) ;
 int gsm_dlci_data_sweep (struct gsm_mux*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gsmld_write_wakeup(struct tty_struct *tty)
{
 struct gsm_mux *gsm = tty->disc_data;
 unsigned long flags;


 clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 spin_lock_irqsave(&gsm->tx_lock, flags);
 gsm_data_kick(gsm);
 if (gsm->tx_bytes < TX_THRESH_LO) {
  gsm_dlci_data_sweep(gsm);
 }
 spin_unlock_irqrestore(&gsm->tx_lock, flags);
}
