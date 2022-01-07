
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int hvc_kick () ;

__attribute__((used)) static void hvc_unthrottle(struct tty_struct *tty)
{
 hvc_kick();
}
