
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc {int ops; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int kfree (struct tty_ldisc*) ;
 int put_ldops (int ) ;

__attribute__((used)) static void tty_ldisc_put(struct tty_ldisc *ld)
{
 if (WARN_ON_ONCE(!ld))
  return;

 put_ldops(ld->ops);
 kfree(ld);
}
