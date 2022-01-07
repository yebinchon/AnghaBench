
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int EINVAL ;
 int WARN_ON (int) ;

__attribute__((used)) static int configfs_do_nothing(struct usb_composite_dev *cdev)
{
 WARN_ON(1);
 return -EINVAL;
}
