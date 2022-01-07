
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gdm* driver_data; } ;
struct gdm {int port; } ;


 int tty_port_hangup (int *) ;

__attribute__((used)) static void gdm_tty_hangup(struct tty_struct *tty)
{
 struct gdm *gdm = tty->driver_data;

 tty_port_hangup(&gdm->port);
}
