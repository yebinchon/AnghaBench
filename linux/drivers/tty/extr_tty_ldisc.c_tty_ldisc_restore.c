
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int num; } ;


 int N_NULL ;
 int N_TTY ;
 int panic (char*,char const*) ;
 int pr_warn (char*,char const*) ;
 scalar_t__ tty_ldisc_failto (struct tty_struct*,int ) ;
 char* tty_name (struct tty_struct*) ;

__attribute__((used)) static void tty_ldisc_restore(struct tty_struct *tty, struct tty_ldisc *old)
{

 if (tty_ldisc_failto(tty, old->ops->num) < 0) {
  const char *name = tty_name(tty);

  pr_warn("Falling back ldisc for %s.\n", name);



  if (tty_ldisc_failto(tty, N_TTY) < 0 &&
      tty_ldisc_failto(tty, N_NULL) < 0)
   panic("Couldn't open N_NULL ldisc for %s.", name);
 }
}
