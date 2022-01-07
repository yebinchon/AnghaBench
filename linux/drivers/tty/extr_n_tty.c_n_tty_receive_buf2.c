
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int n_tty_receive_buf_common (struct tty_struct*,unsigned char const*,char*,int,int) ;

__attribute__((used)) static int n_tty_receive_buf2(struct tty_struct *tty, const unsigned char *cp,
         char *fp, int count)
{
 return n_tty_receive_buf_common(tty, cp, fp, count, 1);
}
