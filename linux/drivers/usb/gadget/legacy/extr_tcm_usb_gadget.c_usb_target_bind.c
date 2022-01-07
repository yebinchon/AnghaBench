
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_composite_dev {int dummy; } ;
struct TYPE_8__ {int iConfiguration; } ;
struct TYPE_7__ {int iSerialNumber; int iProduct; int iManufacturer; } ;
struct TYPE_6__ {int id; } ;


 size_t USB_GADGET_MANUFACTURER_IDX ;
 size_t USB_GADGET_PRODUCT_IDX ;
 size_t USB_GADGET_SERIAL_IDX ;
 size_t USB_G_STR_CONFIG ;
 int coverwrite ;
 int tcm_do_config ;
 int usb_add_config (struct usb_composite_dev*,TYPE_3__*,int ) ;
 int usb_composite_overwrite_options (struct usb_composite_dev*,int *) ;
 int usb_string_ids_tab (struct usb_composite_dev*,TYPE_1__*) ;
 TYPE_3__ usbg_config_driver ;
 TYPE_2__ usbg_device_desc ;
 TYPE_1__* usbg_us_strings ;

__attribute__((used)) static int usb_target_bind(struct usb_composite_dev *cdev)
{
 int ret;

 ret = usb_string_ids_tab(cdev, usbg_us_strings);
 if (ret)
  return ret;

 usbg_device_desc.iManufacturer =
  usbg_us_strings[USB_GADGET_MANUFACTURER_IDX].id;
 usbg_device_desc.iProduct = usbg_us_strings[USB_GADGET_PRODUCT_IDX].id;
 usbg_device_desc.iSerialNumber =
  usbg_us_strings[USB_GADGET_SERIAL_IDX].id;
 usbg_config_driver.iConfiguration =
  usbg_us_strings[USB_G_STR_CONFIG].id;

 ret = usb_add_config(cdev, &usbg_config_driver, tcm_do_config);
 if (ret)
  return ret;
 usb_composite_overwrite_options(cdev, &coverwrite);
 return 0;
}
