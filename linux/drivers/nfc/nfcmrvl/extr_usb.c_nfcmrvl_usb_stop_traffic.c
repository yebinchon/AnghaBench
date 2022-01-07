
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_usb_drv_data {int bulk_anchor; } ;


 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void nfcmrvl_usb_stop_traffic(struct nfcmrvl_usb_drv_data *drv_data)
{
 usb_kill_anchored_urbs(&drv_data->bulk_anchor);
}
