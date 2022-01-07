
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int do_con_write (struct tty_struct*,unsigned char*,int) ;
 scalar_t__ in_interrupt () ;

__attribute__((used)) static int con_put_char(struct tty_struct *tty, unsigned char ch)
{
 if (in_interrupt())
  return 0;
 return do_con_write(tty, &ch, 1);
}
