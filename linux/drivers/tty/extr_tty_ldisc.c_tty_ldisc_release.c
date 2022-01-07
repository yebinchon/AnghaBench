
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_struct* link; } ;


 int tty_ldisc_debug (struct tty_struct*,char*) ;
 int tty_ldisc_kill (struct tty_struct*) ;
 int tty_ldisc_lock_pair (struct tty_struct*,struct tty_struct*) ;
 int tty_ldisc_unlock_pair (struct tty_struct*,struct tty_struct*) ;

void tty_ldisc_release(struct tty_struct *tty)
{
 struct tty_struct *o_tty = tty->link;






 tty_ldisc_lock_pair(tty, o_tty);
 tty_ldisc_kill(tty);
 if (o_tty)
  tty_ldisc_kill(o_tty);
 tty_ldisc_unlock_pair(tty, o_tty);




 tty_ldisc_debug(tty, "released\n");
}
