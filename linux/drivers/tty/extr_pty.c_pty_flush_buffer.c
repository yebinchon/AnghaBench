
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ctrl_lock; int read_wait; int ctrl_status; scalar_t__ packet; struct tty_struct* link; } ;


 int TIOCPKT_FLUSHWRITE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_buffer_flush (struct tty_struct*,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void pty_flush_buffer(struct tty_struct *tty)
{
 struct tty_struct *to = tty->link;

 if (!to)
  return;

 tty_buffer_flush(to, ((void*)0));
 if (to->packet) {
  spin_lock_irq(&tty->ctrl_lock);
  tty->ctrl_status |= TIOCPKT_FLUSHWRITE;
  wake_up_interruptible(&to->read_wait);
  spin_unlock_irq(&tty->ctrl_lock);
 }
}
