
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int SIGTTOU ;
 int __tty_check_change (struct tty_struct*,int ) ;

int tty_check_change(struct tty_struct *tty)
{
 return __tty_check_change(tty, SIGTTOU);
}
