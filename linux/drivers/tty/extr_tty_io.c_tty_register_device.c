
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;
struct device {int dummy; } ;


 struct device* tty_register_device_attr (struct tty_driver*,unsigned int,struct device*,int *,int *) ;

struct device *tty_register_device(struct tty_driver *driver, unsigned index,
       struct device *device)
{
 return tty_register_device_attr(driver, index, device, ((void*)0), ((void*)0));
}
