
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 struct tty_struct* get_current_tty () ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_vhangup (struct tty_struct*) ;

void tty_vhangup_self(void)
{
 struct tty_struct *tty;

 tty = get_current_tty();
 if (tty) {
  tty_vhangup(tty);
  tty_kref_put(tty);
 }
}
