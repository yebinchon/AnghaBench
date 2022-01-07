
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_struct* link; } ;


 int tty_unlock (struct tty_struct*) ;

void tty_unlock_slave(struct tty_struct *tty)
{
 if (tty && tty != tty->link)
  tty_unlock(tty);
}
