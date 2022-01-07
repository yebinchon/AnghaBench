
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nozomi {TYPE_1__* port; scalar_t__ index_start; scalar_t__ open_ttys; } ;
struct TYPE_2__ {int port; } ;


 int DBG1 (char*) ;
 unsigned int MAX_PORT ;
 int msleep (int) ;
 int ntty_driver ;
 int tty_port_destroy (int *) ;
 int tty_port_tty_hangup (int *,int) ;
 int tty_unregister_device (int ,scalar_t__) ;

__attribute__((used)) static void tty_exit(struct nozomi *dc)
{
 unsigned int i;

 DBG1(" ");

 for (i = 0; i < MAX_PORT; ++i)
  tty_port_tty_hangup(&dc->port[i].port, 0);



 while (dc->open_ttys)
  msleep(1);
 for (i = 0; i < MAX_PORT; ++i) {
  tty_unregister_device(ntty_driver, dc->index_start + i);
  tty_port_destroy(&dc->port[i].port);
 }
}
