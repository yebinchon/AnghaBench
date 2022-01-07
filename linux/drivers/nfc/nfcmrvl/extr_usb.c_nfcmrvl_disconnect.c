
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct nfcmrvl_usb_drv_data {int intf; int priv; TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int nfc_info (int *,char*,struct usb_interface*) ;
 int nfcmrvl_nci_unregister_dev (int ) ;
 struct nfcmrvl_usb_drv_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (int ,int *) ;

__attribute__((used)) static void nfcmrvl_disconnect(struct usb_interface *intf)
{
 struct nfcmrvl_usb_drv_data *drv_data = usb_get_intfdata(intf);

 if (!drv_data)
  return;

 nfc_info(&drv_data->udev->dev, "intf %p\n", intf);

 nfcmrvl_nci_unregister_dev(drv_data->priv);

 usb_set_intfdata(drv_data->intf, ((void*)0));
}
