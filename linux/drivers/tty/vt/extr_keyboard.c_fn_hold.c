
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty_struct* tty; } ;
struct vc_data {TYPE_1__ port; } ;
struct tty_struct {scalar_t__ stopped; } ;


 scalar_t__ rep ;
 int start_tty (struct tty_struct*) ;
 int stop_tty (struct tty_struct*) ;

__attribute__((used)) static void fn_hold(struct vc_data *vc)
{
 struct tty_struct *tty = vc->port.tty;

 if (rep || !tty)
  return;






 if (tty->stopped)
  start_tty(tty);
 else
  stop_tty(tty);
}
