
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfcmrvl_usb_drv_data {TYPE_1__* intf; int flags; } ;
struct nfcmrvl_private {struct nfcmrvl_usb_drv_data* drv_data; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;


 int GFP_KERNEL ;
 int NFCMRVL_USB_BULK_RUNNING ;
 int nfcmrvl_submit_bulk_urb (struct nfcmrvl_usb_drv_data*,int ) ;
 int set_bit (int ,int *) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;

__attribute__((used)) static int nfcmrvl_usb_nci_open(struct nfcmrvl_private *priv)
{
 struct nfcmrvl_usb_drv_data *drv_data = priv->drv_data;
 int err;

 err = usb_autopm_get_interface(drv_data->intf);
 if (err)
  return err;

 drv_data->intf->needs_remote_wakeup = 1;

 err = nfcmrvl_submit_bulk_urb(drv_data, GFP_KERNEL);
 if (err)
  goto failed;

 set_bit(NFCMRVL_USB_BULK_RUNNING, &drv_data->flags);
 nfcmrvl_submit_bulk_urb(drv_data, GFP_KERNEL);

 usb_autopm_put_interface(drv_data->intf);
 return 0;

failed:
 usb_autopm_put_interface(drv_data->intf);
 return err;
}
