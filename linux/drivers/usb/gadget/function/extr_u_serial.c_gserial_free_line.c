
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gs_port {int dummy; } ;
struct TYPE_2__ {int lock; struct gs_port* port; } ;


 scalar_t__ WARN_ON (int) ;
 int gs_tty_driver ;
 int gserial_console_exit () ;
 int gserial_free_port (struct gs_port*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* ports ;
 int tty_unregister_device (int ,unsigned char) ;

void gserial_free_line(unsigned char port_num)
{
 struct gs_port *port;

 mutex_lock(&ports[port_num].lock);
 if (WARN_ON(!ports[port_num].port)) {
  mutex_unlock(&ports[port_num].lock);
  return;
 }
 port = ports[port_num].port;
 ports[port_num].port = ((void*)0);
 mutex_unlock(&ports[port_num].lock);

 gserial_free_port(port);
 tty_unregister_device(gs_tty_driver, port_num);
 gserial_console_exit();
}
