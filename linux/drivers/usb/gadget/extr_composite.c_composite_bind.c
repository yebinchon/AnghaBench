
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int ep0; } ;
struct usb_composite_driver {int (* bind ) (struct usb_composite_dev*) ;int name; scalar_t__ needs_serial; int dev; } ;
struct TYPE_2__ {int iSerialNumber; } ;
struct usb_composite_dev {TYPE_1__ desc; scalar_t__ use_os_string; int gstrings; int configs; struct usb_gadget* gadget; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INFO (struct usb_composite_dev*,char*,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int WARNING (struct usb_composite_dev*,char*) ;
 int __composite_unbind (struct usb_gadget*,int) ;
 int composite_dev_prepare (struct usb_composite_driver*,struct usb_composite_dev*) ;
 int composite_os_desc_req_prepare (struct usb_composite_dev*,int ) ;
 struct usb_composite_dev* kzalloc (int,int ) ;
 int set_gadget_data (struct usb_gadget*,struct usb_composite_dev*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct usb_composite_dev*) ;
 struct usb_composite_driver* to_cdriver (struct usb_gadget_driver*) ;
 int update_unchanged_dev_desc (TYPE_1__*,int ) ;

__attribute__((used)) static int composite_bind(struct usb_gadget *gadget,
  struct usb_gadget_driver *gdriver)
{
 struct usb_composite_dev *cdev;
 struct usb_composite_driver *composite = to_cdriver(gdriver);
 int status = -ENOMEM;

 cdev = kzalloc(sizeof *cdev, GFP_KERNEL);
 if (!cdev)
  return status;

 spin_lock_init(&cdev->lock);
 cdev->gadget = gadget;
 set_gadget_data(gadget, cdev);
 INIT_LIST_HEAD(&cdev->configs);
 INIT_LIST_HEAD(&cdev->gstrings);

 status = composite_dev_prepare(composite, cdev);
 if (status)
  goto fail;





 status = composite->bind(cdev);
 if (status < 0)
  goto fail;

 if (cdev->use_os_string) {
  status = composite_os_desc_req_prepare(cdev, gadget->ep0);
  if (status)
   goto fail;
 }

 update_unchanged_dev_desc(&cdev->desc, composite->dev);


 if (composite->needs_serial && !cdev->desc.iSerialNumber)
  WARNING(cdev, "userspace failed to provide iSerialNumber\n");

 INFO(cdev, "%s ready\n", composite->name);
 return 0;

fail:
 __composite_unbind(gadget, 0);
 return status;
}
