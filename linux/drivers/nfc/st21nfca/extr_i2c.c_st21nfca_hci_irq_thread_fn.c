
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st21nfca_i2c_phy {int hard_fault; size_t crc_trials; int hdev; int * pending_skb; scalar_t__ current_read_len; struct i2c_client* i2c_dev; } ;
struct i2c_client {int irq; int dev; } ;
typedef int irqreturn_t ;


 size_t ARRAY_SIZE (int *) ;
 int EAGAIN ;
 int EBADMSG ;
 int EIO ;
 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ST21NFCA_HCI_LLC_MAX_SIZE ;
 int WARN_ON_ONCE (int) ;
 int * alloc_skb (int,int ) ;
 int dev_dbg (int *,char*) ;
 int kfree_skb (int *) ;
 int msleep (int ) ;
 int nfc_hci_recv_frame (int ,int *) ;
 int st21nfca_hci_i2c_read (struct st21nfca_i2c_phy*,int *) ;
 int * wait_tab ;

__attribute__((used)) static irqreturn_t st21nfca_hci_irq_thread_fn(int irq, void *phy_id)
{
 struct st21nfca_i2c_phy *phy = phy_id;
 struct i2c_client *client;

 int r;

 if (!phy || irq != phy->i2c_dev->irq) {
  WARN_ON_ONCE(1);
  return IRQ_NONE;
 }

 client = phy->i2c_dev;
 dev_dbg(&client->dev, "IRQ\n");

 if (phy->hard_fault != 0)
  return IRQ_HANDLED;

 r = st21nfca_hci_i2c_read(phy, phy->pending_skb);
 if (r == -EREMOTEIO) {
  phy->hard_fault = r;

  nfc_hci_recv_frame(phy->hdev, ((void*)0));

  return IRQ_HANDLED;
 } else if (r == -EAGAIN || r == -EIO) {
  return IRQ_HANDLED;
 } else if (r == -EBADMSG && phy->crc_trials < ARRAY_SIZE(wait_tab)) {
  msleep(wait_tab[phy->crc_trials]);
  phy->crc_trials++;
  phy->current_read_len = 0;
  kfree_skb(phy->pending_skb);
 } else if (r > 0) {





  nfc_hci_recv_frame(phy->hdev, phy->pending_skb);
  phy->crc_trials = 0;
 } else {
  kfree_skb(phy->pending_skb);
 }

 phy->pending_skb = alloc_skb(ST21NFCA_HCI_LLC_MAX_SIZE * 2, GFP_KERNEL);
 if (phy->pending_skb == ((void*)0)) {
  phy->hard_fault = -ENOMEM;
  nfc_hci_recv_frame(phy->hdev, ((void*)0));
 }

 return IRQ_HANDLED;
}
