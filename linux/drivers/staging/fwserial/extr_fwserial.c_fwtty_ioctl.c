
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {int dummy; } ;


 int ENOIOCTLCMD ;

 int wait_msr_change (struct fwtty_port*,unsigned long) ;

__attribute__((used)) static int fwtty_ioctl(struct tty_struct *tty, unsigned int cmd,
         unsigned long arg)
{
 struct fwtty_port *port = tty->driver_data;
 int err;

 switch (cmd) {
 case 128:
  err = wait_msr_change(port, arg);
  break;

 default:
  err = -ENOIOCTLCMD;
 }

 return err;
}
