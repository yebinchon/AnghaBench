
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty3270* driver_data; } ;
struct tty3270 {scalar_t__ char_count; unsigned char* char_buf; } ;


 scalar_t__ TTY3270_CHAR_BUF_SIZE ;

__attribute__((used)) static int tty3270_put_char(struct tty_struct *tty, unsigned char ch)
{
 struct tty3270 *tp;

 tp = tty->driver_data;
 if (!tp || tp->char_count >= TTY3270_CHAR_BUF_SIZE)
  return 0;
 tp->char_buf[tp->char_count++] = ch;
 return 1;
}
