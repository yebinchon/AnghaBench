
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct raw3215_info {int dummy; } ;


 int raw3215_putchar (struct raw3215_info*,unsigned char) ;

__attribute__((used)) static int tty3215_put_char(struct tty_struct *tty, unsigned char ch)
{
 struct raw3215_info *raw;

 if (!tty)
  return 0;
 raw = (struct raw3215_info *) tty->driver_data;
 raw3215_putchar(raw, ch);
 return 1;
}
