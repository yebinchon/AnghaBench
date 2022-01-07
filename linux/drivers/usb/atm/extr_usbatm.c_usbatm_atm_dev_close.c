
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {int dummy; } ;
struct atm_dev {struct usbatm_data* dev_data; } ;


 int usbatm_put_instance (struct usbatm_data*) ;

__attribute__((used)) static void usbatm_atm_dev_close(struct atm_dev *atm_dev)
{
 struct usbatm_data *instance = atm_dev->dev_data;

 if (!instance)
  return;

 atm_dev->dev_data = ((void*)0);
 usbatm_put_instance(instance);
}
