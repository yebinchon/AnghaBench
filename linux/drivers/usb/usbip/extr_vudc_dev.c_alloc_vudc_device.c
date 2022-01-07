
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc_device {int pdev; int dev_entry; } ;


 int GADGET_NAME ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct vudc_device*) ;
 struct vudc_device* kzalloc (int,int ) ;
 int platform_device_alloc (int ,int) ;

struct vudc_device *alloc_vudc_device(int devid)
{
 struct vudc_device *udc_dev = ((void*)0);

 udc_dev = kzalloc(sizeof(*udc_dev), GFP_KERNEL);
 if (!udc_dev)
  goto out;

 INIT_LIST_HEAD(&udc_dev->dev_entry);

 udc_dev->pdev = platform_device_alloc(GADGET_NAME, devid);
 if (!udc_dev->pdev) {
  kfree(udc_dev);
  udc_dev = ((void*)0);
 }

out:
 return udc_dev;
}
