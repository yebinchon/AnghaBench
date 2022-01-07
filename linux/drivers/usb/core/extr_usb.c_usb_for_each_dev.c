
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct each_dev_arg {void* member_0; int (* member_1 ) (struct usb_device*,void*) ;} ;


 int __each_dev ;
 int bus_for_each_dev (int *,int *,struct each_dev_arg*,int ) ;
 int usb_bus_type ;

int usb_for_each_dev(void *data, int (*fn)(struct usb_device *, void *))
{
 struct each_dev_arg arg = {data, fn};

 return bus_for_each_dev(&usb_bus_type, ((void*)0), &arg, __each_dev);
}
