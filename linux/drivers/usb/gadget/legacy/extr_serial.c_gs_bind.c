
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_descriptor_header {int dummy; } ;
struct usb_composite_dev {int gadget; } ;
struct TYPE_8__ {int iManufacturer; int iProduct; } ;
struct TYPE_7__ {int iConfiguration; int bmAttributes; struct usb_descriptor_header** descriptors; } ;
struct TYPE_6__ {int id; } ;


 int ENOMEM ;
 int GS_VERSION_NAME ;
 int INFO (struct usb_composite_dev*,char*,int ) ;
 size_t STRING_DESCRIPTION_IDX ;
 int USB_CONFIG_ATT_WAKEUP ;
 size_t USB_GADGET_MANUFACTURER_IDX ;
 size_t USB_GADGET_PRODUCT_IDX ;
 int coverwrite ;
 TYPE_5__ device_desc ;
 scalar_t__ gadget_is_otg (int ) ;
 int kfree (struct usb_descriptor_header*) ;
 struct usb_descriptor_header** otg_desc ;
 TYPE_3__ serial_config_driver ;
 int serial_register_ports (struct usb_composite_dev*,TYPE_3__*,char*) ;
 TYPE_1__* strings_dev ;
 int usb_composite_overwrite_options (struct usb_composite_dev*,int *) ;
 int usb_ep_autoconfig_reset (int ) ;
 struct usb_descriptor_header* usb_otg_descriptor_alloc (int ) ;
 int usb_otg_descriptor_init (int ,struct usb_descriptor_header*) ;
 int usb_string_ids_tab (struct usb_composite_dev*,TYPE_1__*) ;
 scalar_t__ use_acm ;
 scalar_t__ use_obex ;

__attribute__((used)) static int gs_bind(struct usb_composite_dev *cdev)
{
 int status;





 status = usb_string_ids_tab(cdev, strings_dev);
 if (status < 0)
  goto fail;
 device_desc.iManufacturer = strings_dev[USB_GADGET_MANUFACTURER_IDX].id;
 device_desc.iProduct = strings_dev[USB_GADGET_PRODUCT_IDX].id;
 status = strings_dev[STRING_DESCRIPTION_IDX].id;
 serial_config_driver.iConfiguration = status;

 if (gadget_is_otg(cdev->gadget)) {
  if (!otg_desc[0]) {
   struct usb_descriptor_header *usb_desc;

   usb_desc = usb_otg_descriptor_alloc(cdev->gadget);
   if (!usb_desc) {
    status = -ENOMEM;
    goto fail;
   }
   usb_otg_descriptor_init(cdev->gadget, usb_desc);
   otg_desc[0] = usb_desc;
   otg_desc[1] = ((void*)0);
  }
  serial_config_driver.descriptors = otg_desc;
  serial_config_driver.bmAttributes |= USB_CONFIG_ATT_WAKEUP;
 }


 if (use_acm) {
  status = serial_register_ports(cdev, &serial_config_driver,
    "acm");
  usb_ep_autoconfig_reset(cdev->gadget);
 } else if (use_obex)
  status = serial_register_ports(cdev, &serial_config_driver,
    "obex");
 else {
  status = serial_register_ports(cdev, &serial_config_driver,
    "gser");
 }
 if (status < 0)
  goto fail1;

 usb_composite_overwrite_options(cdev, &coverwrite);
 INFO(cdev, "%s\n", GS_VERSION_NAME);

 return 0;
fail1:
 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);
fail:
 return status;
}
