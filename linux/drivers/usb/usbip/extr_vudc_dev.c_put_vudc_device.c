
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc_device {int pdev; } ;


 int kfree (struct vudc_device*) ;
 int platform_device_put (int ) ;

void put_vudc_device(struct vudc_device *udc_dev)
{
 platform_device_put(udc_dev->pdev);
 kfree(udc_dev);
}
