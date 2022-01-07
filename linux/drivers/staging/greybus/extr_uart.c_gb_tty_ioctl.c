
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int dummy; } ;


 int ENOIOCTLCMD ;

 int wait_serial_change (struct gb_tty*,unsigned long) ;

__attribute__((used)) static int gb_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
   unsigned long arg)
{
 struct gb_tty *gb_tty = tty->driver_data;

 switch (cmd) {
 case 128:
  return wait_serial_change(gb_tty, arg);
 }

 return -ENOIOCTLCMD;
}
