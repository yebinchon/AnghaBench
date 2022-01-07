
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int name; TYPE_2__* ep0; } ;
struct dev_data {int lock; int state; TYPE_1__* req; struct usb_gadget* gadget; } ;
struct TYPE_4__ {struct dev_data* driver_data; } ;
struct TYPE_3__ {int complete; int * context; } ;


 int CHIP ;
 int ENODEV ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_KERNEL ;
 int INFO (struct dev_data*,char*,int ) ;
 int STATE_DEV_UNCONNECTED ;
 scalar_t__ activate_ep_files (struct dev_data*) ;
 int epio_complete ;
 int gadgetfs_unbind (struct usb_gadget*) ;
 int get_dev (struct dev_data*) ;
 int pr_err (char*,int ,int ,int ) ;
 int set_gadget_data (struct usb_gadget*,struct dev_data*) ;
 int shortname ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ strcmp (int ,int ) ;
 struct dev_data* the_device ;
 TYPE_1__* usb_ep_alloc_request (TYPE_2__*,int ) ;

__attribute__((used)) static int gadgetfs_bind(struct usb_gadget *gadget,
  struct usb_gadget_driver *driver)
{
 struct dev_data *dev = the_device;

 if (!dev)
  return -ESRCH;
 if (0 != strcmp (CHIP, gadget->name)) {
  pr_err("%s expected %s controller not %s\n",
   shortname, CHIP, gadget->name);
  return -ENODEV;
 }

 set_gadget_data (gadget, dev);
 dev->gadget = gadget;
 gadget->ep0->driver_data = dev;


 dev->req = usb_ep_alloc_request (gadget->ep0, GFP_KERNEL);
 if (!dev->req)
  goto enomem;
 dev->req->context = ((void*)0);
 dev->req->complete = epio_complete;

 if (activate_ep_files (dev) < 0)
  goto enomem;

 INFO (dev, "bound to %s driver\n", gadget->name);
 spin_lock_irq(&dev->lock);
 dev->state = STATE_DEV_UNCONNECTED;
 spin_unlock_irq(&dev->lock);
 get_dev (dev);
 return 0;

enomem:
 gadgetfs_unbind (gadget);
 return -ENOMEM;
}
