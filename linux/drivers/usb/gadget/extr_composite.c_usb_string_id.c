
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int next_string_id; } ;


 int ENODEV ;

int usb_string_id(struct usb_composite_dev *cdev)
{
 if (cdev->next_string_id < 254) {



  cdev->next_string_id++;
  return cdev->next_string_id;
 }
 return -ENODEV;
}
