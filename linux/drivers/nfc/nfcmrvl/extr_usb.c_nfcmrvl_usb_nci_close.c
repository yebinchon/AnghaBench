
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfcmrvl_usb_drv_data {int deferred; TYPE_1__* intf; int tx_anchor; int flags; int waker; } ;
struct nfcmrvl_private {struct nfcmrvl_usb_drv_data* drv_data; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;


 int NFCMRVL_USB_BULK_RUNNING ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int nfcmrvl_usb_stop_traffic (struct nfcmrvl_usb_drv_data*) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_scuttle_anchored_urbs (int *) ;

__attribute__((used)) static int nfcmrvl_usb_nci_close(struct nfcmrvl_private *priv)
{
 struct nfcmrvl_usb_drv_data *drv_data = priv->drv_data;
 int err;

 cancel_work_sync(&drv_data->waker);

 clear_bit(NFCMRVL_USB_BULK_RUNNING, &drv_data->flags);

 nfcmrvl_usb_stop_traffic(drv_data);
 usb_kill_anchored_urbs(&drv_data->tx_anchor);
 err = usb_autopm_get_interface(drv_data->intf);
 if (err)
  goto failed;

 drv_data->intf->needs_remote_wakeup = 0;
 usb_autopm_put_interface(drv_data->intf);

failed:
 usb_scuttle_anchored_urbs(&drv_data->deferred);
 return 0;
}
