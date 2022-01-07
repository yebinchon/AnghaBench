
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_string {int id; } ;
struct usb_composite_dev {int req; TYPE_1__* gadget; } ;
struct fsg_common {int can_stall; TYPE_1__* gadget; struct usb_composite_dev* cdev; int ep0req; int ep0; } ;
struct TYPE_4__ {int iInterface; } ;
struct TYPE_3__ {int ep0; } ;


 int ARRAY_SIZE (int ) ;
 size_t FSG_STRING_INTERFACE ;
 scalar_t__ IS_ERR (struct usb_string*) ;
 int PTR_ERR (struct usb_string*) ;
 TYPE_2__ fsg_intf_desc ;
 int fsg_strings ;
 int fsg_strings_array ;
 scalar_t__ gadget_is_stall_supported (TYPE_1__*) ;
 struct usb_string* usb_gstrings_attach (struct usb_composite_dev*,int ,int ) ;

int fsg_common_set_cdev(struct fsg_common *common,
    struct usb_composite_dev *cdev, bool can_stall)
{
 struct usb_string *us;

 common->gadget = cdev->gadget;
 common->ep0 = cdev->gadget->ep0;
 common->ep0req = cdev->req;
 common->cdev = cdev;

 us = usb_gstrings_attach(cdev, fsg_strings_array,
     ARRAY_SIZE(fsg_strings));
 if (IS_ERR(us))
  return PTR_ERR(us);

 fsg_intf_desc.iInterface = us[FSG_STRING_INTERFACE].id;






 common->can_stall = can_stall &&
   gadget_is_stall_supported(common->gadget);

 return 0;
}
