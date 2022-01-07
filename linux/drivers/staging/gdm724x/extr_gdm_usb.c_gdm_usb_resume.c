
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int usb_dev; } ;
struct tx_cxt {int lock; } ;
struct rx_cxt {int avail_count; int rx_lock; } ;
struct phy_dev {struct lte_udev* priv_dev; } ;
struct TYPE_2__ {int work; } ;
struct lte_udev {scalar_t__ usb_state; TYPE_1__ work_tx; struct tx_cxt tx; int rx_cb; struct rx_cxt rx; } ;


 int MAX_RX_SUBMIT_COUNT ;
 scalar_t__ PM_NORMAL ;
 scalar_t__ PM_SUSPEND ;
 int USB_COMPLETE ;
 int dev_err (int ,char*) ;
 int gdm_usb_recv (struct lte_udev*,int ,struct phy_dev*,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct phy_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int gdm_usb_resume(struct usb_interface *intf)
{
 struct phy_dev *phy_dev;
 struct lte_udev *udev;
 struct tx_cxt *tx;
 struct rx_cxt *rx;
 unsigned long flags;
 int issue_count;
 int i;

 phy_dev = usb_get_intfdata(intf);
 udev = phy_dev->priv_dev;
 rx = &udev->rx;

 if (udev->usb_state != PM_SUSPEND) {
  dev_err(intf->usb_dev, "usb resume - invalid state\n");
  return -1;
 }
 udev->usb_state = PM_NORMAL;

 spin_lock_irqsave(&rx->rx_lock, flags);
 issue_count = rx->avail_count - MAX_RX_SUBMIT_COUNT;
 spin_unlock_irqrestore(&rx->rx_lock, flags);

 if (issue_count >= 0) {
  for (i = 0; i < issue_count; i++)
   gdm_usb_recv(phy_dev->priv_dev,
         udev->rx_cb,
         phy_dev,
         USB_COMPLETE);
 }

 tx = &udev->tx;
 spin_lock_irqsave(&tx->lock, flags);
 schedule_work(&udev->work_tx.work);
 spin_unlock_irqrestore(&tx->lock, flags);

 return 0;
}
