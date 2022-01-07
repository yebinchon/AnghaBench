
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_driver {unsigned int nr; struct tty_driver* tty_driver; TYPE_1__* state; } ;
struct tty_driver {int dummy; } ;
struct TYPE_2__ {int port; } ;


 int kfree (TYPE_1__*) ;
 int put_tty_driver (struct tty_driver*) ;
 int tty_port_destroy (int *) ;
 int tty_unregister_driver (struct tty_driver*) ;

void uart_unregister_driver(struct uart_driver *drv)
{
 struct tty_driver *p = drv->tty_driver;
 unsigned int i;

 tty_unregister_driver(p);
 put_tty_driver(p);
 for (i = 0; i < drv->nr; i++)
  tty_port_destroy(&drv->state[i].port);
 kfree(drv->state);
 drv->state = ((void*)0);
 drv->tty_driver = ((void*)0);
}
