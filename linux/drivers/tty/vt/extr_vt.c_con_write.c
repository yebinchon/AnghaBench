
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int con_flush_chars (struct tty_struct*) ;
 int do_con_write (struct tty_struct*,unsigned char const*,int) ;

__attribute__((used)) static int con_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 int retval;

 retval = do_con_write(tty, buf, count);
 con_flush_chars(tty);

 return retval;
}
