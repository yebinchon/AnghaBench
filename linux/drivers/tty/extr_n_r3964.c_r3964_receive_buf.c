
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct r3964_info* disc_data; } ;
struct r3964_info {int dummy; } ;


 char TTY_NORMAL ;
 int receive_char (struct r3964_info*,unsigned char const) ;
 int receive_error (struct r3964_info*,char) ;

__attribute__((used)) static void r3964_receive_buf(struct tty_struct *tty, const unsigned char *cp,
   char *fp, int count)
{
 struct r3964_info *pInfo = tty->disc_data;
 const unsigned char *p;
 char *f, flags = TTY_NORMAL;
 int i;

 for (i = count, p = cp, f = fp; i; i--, p++) {
  if (f)
   flags = *f++;
  if (flags == TTY_NORMAL) {
   receive_char(pInfo, *p);
  } else {
   receive_error(pInfo, flags);
  }

 }
}
