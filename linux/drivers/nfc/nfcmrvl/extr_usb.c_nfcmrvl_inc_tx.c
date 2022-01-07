
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_usb_drv_data {int txlock; int tx_in_flight; int flags; } ;


 int NFCMRVL_USB_SUSPENDING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nfcmrvl_inc_tx(struct nfcmrvl_usb_drv_data *drv_data)
{
 unsigned long flags;
 int rv;

 spin_lock_irqsave(&drv_data->txlock, flags);
 rv = test_bit(NFCMRVL_USB_SUSPENDING, &drv_data->flags);
 if (!rv)
  drv_data->tx_in_flight++;
 spin_unlock_irqrestore(&drv_data->txlock, flags);

 return rv;
}
