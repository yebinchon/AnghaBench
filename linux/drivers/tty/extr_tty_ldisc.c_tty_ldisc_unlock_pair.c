
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int __tty_ldisc_unlock (struct tty_struct*) ;

__attribute__((used)) static void tty_ldisc_unlock_pair(struct tty_struct *tty,
      struct tty_struct *tty2)
{
 __tty_ldisc_unlock(tty);
 if (tty2)
  __tty_ldisc_unlock(tty2);
}
