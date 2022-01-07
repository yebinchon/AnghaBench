
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {size_t index; } ;
struct tty_driver {int ** ttys; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* remove ) (struct tty_driver*,struct tty_struct*) ;} ;


 int stub1 (struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static void tty_driver_remove_tty(struct tty_driver *driver, struct tty_struct *tty)
{
 if (driver->ops->remove)
  driver->ops->remove(driver, tty);
 else
  driver->ttys[tty->index] = ((void*)0);
}
