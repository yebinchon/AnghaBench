
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int port; } ;


 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static void if_wake(unsigned long data)
{
 struct cardstate *cs = (struct cardstate *)data;

 tty_port_tty_wakeup(&cs->port);
}
