
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int hangup_work; } ;


 int schedule_work (int *) ;
 int tty_debug_hangup (struct tty_struct*,char*) ;

void tty_hangup(struct tty_struct *tty)
{
 tty_debug_hangup(tty, "hangup\n");
 schedule_work(&tty->hangup_work);
}
