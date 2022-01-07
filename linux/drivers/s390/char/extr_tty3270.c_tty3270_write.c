
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty3270* driver_data; } ;
struct tty3270 {scalar_t__ char_count; unsigned char const* char_buf; } ;


 int tty3270_do_write (struct tty3270*,struct tty_struct*,unsigned char const*,int) ;

__attribute__((used)) static int
tty3270_write(struct tty_struct * tty,
       const unsigned char *buf, int count)
{
 struct tty3270 *tp;

 tp = tty->driver_data;
 if (!tp)
  return 0;
 if (tp->char_count > 0) {
  tty3270_do_write(tp, tty, tp->char_buf, tp->char_count);
  tp->char_count = 0;
 }
 tty3270_do_write(tp, tty, buf, count);
 return count;
}
