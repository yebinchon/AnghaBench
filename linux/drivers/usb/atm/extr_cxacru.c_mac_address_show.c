
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxacru_data {TYPE_2__* usbatm; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* atm_dev; } ;
struct TYPE_3__ {int esi; } ;


 int ENODEV ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;
 int to_usb_interface (struct device*) ;
 struct cxacru_data* to_usbatm_driver_data (int ) ;

__attribute__((used)) static ssize_t mac_address_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct cxacru_data *instance = to_usbatm_driver_data(
   to_usb_interface(dev));

 if (instance == ((void*)0) || instance->usbatm->atm_dev == ((void*)0))
  return -ENODEV;

 return snprintf(buf, PAGE_SIZE, "%pM\n",
  instance->usbatm->atm_dev->esi);
}
