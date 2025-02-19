
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct raw3215_info {int dummy; } ;


 int raw3215_putchar (struct raw3215_info*,unsigned char const) ;
 int raw3215_write (struct raw3215_info*,unsigned char const*,int) ;

__attribute__((used)) static int tty3215_write(struct tty_struct * tty,
    const unsigned char *buf, int count)
{
 struct raw3215_info *raw;
 int i, written;

 if (!tty)
  return 0;
 raw = (struct raw3215_info *) tty->driver_data;
 written = count;
 while (count > 0) {
  for (i = 0; i < count; i++)
   if (buf[i] == '\t' || buf[i] == '\n')
    break;
  raw3215_write(raw, buf, i);
  count -= i;
  buf += i;
  if (count > 0) {
   raw3215_putchar(raw, *buf);
   count--;
   buf++;
  }
 }
 return written;
}
