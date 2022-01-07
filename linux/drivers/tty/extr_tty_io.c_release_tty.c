
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int index; struct tty_struct* link; TYPE_2__* port; int driver; TYPE_1__* ops; } ;
struct TYPE_4__ {int * itty; } ;
struct TYPE_3__ {int (* shutdown ) (struct tty_struct*) ;} ;


 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct tty_struct*) ;
 int tty_buffer_cancel_work (TYPE_2__*) ;
 int tty_driver_remove_tty (int ,struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_mutex ;
 int tty_save_termios (struct tty_struct*) ;

__attribute__((used)) static void release_tty(struct tty_struct *tty, int idx)
{

 WARN_ON(tty->index != idx);
 WARN_ON(!mutex_is_locked(&tty_mutex));
 if (tty->ops->shutdown)
  tty->ops->shutdown(tty);
 tty_save_termios(tty);
 tty_driver_remove_tty(tty->driver, tty);
 tty->port->itty = ((void*)0);
 if (tty->link)
  tty->link->port->itty = ((void*)0);
 tty_buffer_cancel_work(tty->port);
 if (tty->link)
  tty_buffer_cancel_work(tty->link->port);

 tty_kref_put(tty->link);
 tty_kref_put(tty);
}
