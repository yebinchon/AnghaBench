
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int view; int port; } ;


 int raw3270_put_view (int *) ;
 int tty_port_tty_hangup (int *,int) ;

__attribute__((used)) static void
tty3270_hangup_tasklet(struct tty3270 *tp)
{
 tty_port_tty_hangup(&tp->port, 1);
 raw3270_put_view(&tp->view);
}
