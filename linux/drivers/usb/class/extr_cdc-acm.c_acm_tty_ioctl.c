
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int control; } ;


 int EIO ;
 int ENOIOCTLCMD ;

 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int wait_serial_change (struct acm*,unsigned long) ;

__attribute__((used)) static int acm_tty_ioctl(struct tty_struct *tty,
     unsigned int cmd, unsigned long arg)
{
 struct acm *acm = tty->driver_data;
 int rv = -ENOIOCTLCMD;

 switch (cmd) {
 case 128:
  rv = usb_autopm_get_interface(acm->control);
  if (rv < 0) {
   rv = -EIO;
   break;
  }
  rv = wait_serial_change(acm, arg);
  usb_autopm_put_interface(acm->control);
  break;
 }

 return rv;
}
