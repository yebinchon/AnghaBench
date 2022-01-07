
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int __tty_hangup (struct tty_struct*,int) ;
 int tty_debug_hangup (struct tty_struct*,char*) ;

void tty_vhangup_session(struct tty_struct *tty)
{
 tty_debug_hangup(tty, "session hangup\n");
 __tty_hangup(tty, 1);
}
