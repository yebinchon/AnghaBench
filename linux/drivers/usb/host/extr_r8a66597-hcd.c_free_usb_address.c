
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r8a66597_device {int address; int device_list; TYPE_1__* udev; int state; } ;
struct r8a66597 {int address_map; int max_root_hub; TYPE_2__* root_hub; } ;
struct TYPE_4__ {struct r8a66597_device* dev; } ;
struct TYPE_3__ {int dev; } ;


 int USB_STATE_DEFAULT ;
 int dev_dbg (int *,char*,int) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct r8a66597_device*) ;
 int list_del (int *) ;

__attribute__((used)) static void free_usb_address(struct r8a66597 *r8a66597,
        struct r8a66597_device *dev, int reset)
{
 int port;

 if (!dev)
  return;

 dev_dbg(&dev->udev->dev, "free_addr: addr=%d\n", dev->address);

 dev->state = USB_STATE_DEFAULT;
 r8a66597->address_map &= ~(1 << dev->address);
 dev->address = 0;





 if (reset)
  dev_set_drvdata(&dev->udev->dev, ((void*)0));
 list_del(&dev->device_list);
 kfree(dev);

 for (port = 0; port < r8a66597->max_root_hub; port++) {
  if (r8a66597->root_hub[port].dev == dev) {
   r8a66597->root_hub[port].dev = ((void*)0);
   break;
  }
 }
}
