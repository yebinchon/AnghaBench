
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* link; int ctrl_lock; int ctrl_status; } ;
struct TYPE_2__ {int read_wait; scalar_t__ packet; } ;


 int TIOCPKT_FLUSHREAD ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void n_tty_packet_mode_flush(struct tty_struct *tty)
{
 unsigned long flags;

 if (tty->link->packet) {
  spin_lock_irqsave(&tty->ctrl_lock, flags);
  tty->ctrl_status |= TIOCPKT_FLUSHREAD;
  spin_unlock_irqrestore(&tty->ctrl_lock, flags);
  wake_up_interruptible(&tty->link->read_wait);
 }
}
