
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {TYPE_1__* bos; } ;
struct TYPE_2__ {struct TYPE_2__* desc; } ;


 int kfree (TYPE_1__*) ;

void usb_release_bos_descriptor(struct usb_device *dev)
{
 if (dev->bos) {
  kfree(dev->bos->desc);
  kfree(dev->bos);
  dev->bos = ((void*)0);
 }
}
