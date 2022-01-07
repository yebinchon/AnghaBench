
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct usb_dynids {int lock; int list; } ;
struct TYPE_2__ {int driver_info; int match_flags; scalar_t__ bInterfaceClass; scalar_t__ idProduct; scalar_t__ idVendor; } ;
struct usb_dynid {int node; TYPE_1__ id; } ;
struct usb_device_id {scalar_t__ idVendor; scalar_t__ idProduct; int driver_info; scalar_t__ match_flags; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int USB_DEVICE_ID_MATCH_DEVICE ;
 int USB_DEVICE_ID_MATCH_INT_CLASS ;
 int driver_attach (struct device_driver*) ;
 int kfree (struct usb_dynid*) ;
 struct usb_dynid* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,scalar_t__*,scalar_t__*,unsigned int*,scalar_t__*,scalar_t__*) ;

ssize_t usb_store_new_id(struct usb_dynids *dynids,
    const struct usb_device_id *id_table,
    struct device_driver *driver,
    const char *buf, size_t count)
{
 struct usb_dynid *dynid;
 u32 idVendor = 0;
 u32 idProduct = 0;
 unsigned int bInterfaceClass = 0;
 u32 refVendor, refProduct;
 int fields = 0;
 int retval = 0;

 fields = sscanf(buf, "%x %x %x %x %x", &idVendor, &idProduct,
   &bInterfaceClass, &refVendor, &refProduct);
 if (fields < 2)
  return -EINVAL;

 dynid = kzalloc(sizeof(*dynid), GFP_KERNEL);
 if (!dynid)
  return -ENOMEM;

 INIT_LIST_HEAD(&dynid->node);
 dynid->id.idVendor = idVendor;
 dynid->id.idProduct = idProduct;
 dynid->id.match_flags = USB_DEVICE_ID_MATCH_DEVICE;
 if (fields > 2 && bInterfaceClass) {
  if (bInterfaceClass > 255) {
   retval = -EINVAL;
   goto fail;
  }

  dynid->id.bInterfaceClass = (u8)bInterfaceClass;
  dynid->id.match_flags |= USB_DEVICE_ID_MATCH_INT_CLASS;
 }

 if (fields > 4) {
  const struct usb_device_id *id = id_table;

  if (!id) {
   retval = -ENODEV;
   goto fail;
  }

  for (; id->match_flags; id++)
   if (id->idVendor == refVendor && id->idProduct == refProduct)
    break;

  if (id->match_flags) {
   dynid->id.driver_info = id->driver_info;
  } else {
   retval = -ENODEV;
   goto fail;
  }
 }

 spin_lock(&dynids->lock);
 list_add_tail(&dynid->node, &dynids->list);
 spin_unlock(&dynids->lock);

 retval = driver_attach(driver);

 if (retval)
  return retval;
 return count;

fail:
 kfree(dynid);
 return retval;
}
