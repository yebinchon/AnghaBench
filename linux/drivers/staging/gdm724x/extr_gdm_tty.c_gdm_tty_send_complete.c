
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdm {int port; } ;


 int GDM_TTY_READY (struct gdm*) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static void gdm_tty_send_complete(void *arg)
{
 struct gdm *gdm = arg;

 if (!GDM_TTY_READY(gdm))
  return;

 tty_port_tty_wakeup(&gdm->port);
}
