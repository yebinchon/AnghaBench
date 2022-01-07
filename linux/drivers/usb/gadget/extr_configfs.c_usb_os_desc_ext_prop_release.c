
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_os_desc_ext_prop {int dummy; } ;
struct config_item {int dummy; } ;


 int kfree (struct usb_os_desc_ext_prop*) ;
 struct usb_os_desc_ext_prop* to_usb_os_desc_ext_prop (struct config_item*) ;

__attribute__((used)) static void usb_os_desc_ext_prop_release(struct config_item *item)
{
 struct usb_os_desc_ext_prop *ext_prop = to_usb_os_desc_ext_prop(item);

 kfree(ext_prop);
}
