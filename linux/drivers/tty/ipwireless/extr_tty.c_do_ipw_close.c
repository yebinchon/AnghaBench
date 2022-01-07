
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int * driver_data; } ;
struct TYPE_2__ {scalar_t__ count; struct tty_struct* tty; } ;
struct ipw_tty {scalar_t__ tty_type; int network; TYPE_1__ port; } ;


 scalar_t__ TTYTYPE_MODEM ;
 int ipwireless_ppp_close (int ) ;

__attribute__((used)) static void do_ipw_close(struct ipw_tty *tty)
{
 tty->port.count--;

 if (tty->port.count == 0) {
  struct tty_struct *linux_tty = tty->port.tty;

  if (linux_tty != ((void*)0)) {
   tty->port.tty = ((void*)0);
   linux_tty->driver_data = ((void*)0);

   if (tty->tty_type == TTYTYPE_MODEM)
    ipwireless_ppp_close(tty->network);
  }
 }
}
