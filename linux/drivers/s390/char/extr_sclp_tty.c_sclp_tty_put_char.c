
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 scalar_t__ SCLP_TTY_BUF_SIZE ;
 unsigned char* sclp_tty_chars ;
 scalar_t__ sclp_tty_chars_count ;
 int sclp_tty_write_string (unsigned char*,scalar_t__,int ) ;

__attribute__((used)) static int
sclp_tty_put_char(struct tty_struct *tty, unsigned char ch)
{
 sclp_tty_chars[sclp_tty_chars_count++] = ch;
 if (ch == '\n' || sclp_tty_chars_count >= SCLP_TTY_BUF_SIZE) {
  sclp_tty_write_string(sclp_tty_chars, sclp_tty_chars_count, 0);
  sclp_tty_chars_count = 0;
 }
 return 1;
}
