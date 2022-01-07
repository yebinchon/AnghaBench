
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int usb_bulk_msg (struct usb_device*,unsigned int,void*,int,int*,int) ;

int usb_interrupt_msg(struct usb_device *usb_dev, unsigned int pipe,
        void *data, int len, int *actual_length, int timeout)
{
 return usb_bulk_msg(usb_dev, pipe, data, len, actual_length, timeout);
}
