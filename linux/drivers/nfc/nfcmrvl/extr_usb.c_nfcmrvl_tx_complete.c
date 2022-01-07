
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int setup_packet; int actual_length; int status; struct sk_buff* context; } ;
struct sk_buff {scalar_t__ dev; } ;
struct nfcmrvl_usb_drv_data {int txlock; int tx_in_flight; } ;
struct nfcmrvl_private {int dev; struct nfcmrvl_usb_drv_data* drv_data; } ;
struct nci_dev {int dummy; } ;


 int kfree (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct nfcmrvl_private* nci_get_drvdata (struct nci_dev*) ;
 int nfc_info (int ,char*,struct urb*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nfcmrvl_tx_complete(struct urb *urb)
{
 struct sk_buff *skb = urb->context;
 struct nci_dev *ndev = (struct nci_dev *)skb->dev;
 struct nfcmrvl_private *priv = nci_get_drvdata(ndev);
 struct nfcmrvl_usb_drv_data *drv_data = priv->drv_data;
 unsigned long flags;

 nfc_info(priv->dev, "urb %p status %d count %d\n",
   urb, urb->status, urb->actual_length);

 spin_lock_irqsave(&drv_data->txlock, flags);
 drv_data->tx_in_flight--;
 spin_unlock_irqrestore(&drv_data->txlock, flags);

 kfree(urb->setup_packet);
 kfree_skb(skb);
}
