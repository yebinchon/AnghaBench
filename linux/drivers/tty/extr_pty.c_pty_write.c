
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {TYPE_1__* port; scalar_t__ stopped; struct tty_struct* link; } ;
struct TYPE_3__ {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (TYPE_1__*) ;
 int tty_insert_flip_string (TYPE_1__*,unsigned char const*,int) ;

__attribute__((used)) static int pty_write(struct tty_struct *tty, const unsigned char *buf, int c)
{
 struct tty_struct *to = tty->link;
 unsigned long flags;

 if (tty->stopped)
  return 0;

 if (c > 0) {
  spin_lock_irqsave(&to->port->lock, flags);

  c = tty_insert_flip_string(to->port, buf, c);

  if (c)
   tty_flip_buffer_push(to->port);
  spin_unlock_irqrestore(&to->port->lock, flags);
 }
 return c;
}
