
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int expect_release ;
 int is_active ;
 int pr_crit (char*) ;
 int usb_pcwd_device ;
 int usb_pcwd_keepalive (int ) ;
 int usb_pcwd_stop (int ) ;

__attribute__((used)) static int usb_pcwd_release(struct inode *inode, struct file *file)
{



 if (expect_release == 42) {
  usb_pcwd_stop(usb_pcwd_device);
 } else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  usb_pcwd_keepalive(usb_pcwd_device);
 }
 expect_release = 0;
 clear_bit(0, &is_active);
 return 0;
}
