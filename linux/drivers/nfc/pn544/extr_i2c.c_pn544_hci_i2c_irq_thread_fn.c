
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pn544_i2c_phy {int hard_fault; scalar_t__ run_mode; int hdev; int fw_work; int fw_cmd_result; struct i2c_client* i2c_dev; } ;
struct i2c_client {int irq; int dev; } ;
typedef int irqreturn_t ;


 int EBADMSG ;
 int ENOMEM ;
 int EREMOTEIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PN544_FW_MODE ;
 int WARN_ON_ONCE (int) ;
 int dev_dbg (int *,char*) ;
 int nfc_hci_recv_frame (int ,struct sk_buff*) ;
 int pn544_hci_i2c_fw_read_status (struct pn544_i2c_phy*) ;
 int pn544_hci_i2c_read (struct pn544_i2c_phy*,struct sk_buff**) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t pn544_hci_i2c_irq_thread_fn(int irq, void *phy_id)
{
 struct pn544_i2c_phy *phy = phy_id;
 struct i2c_client *client;
 struct sk_buff *skb = ((void*)0);
 int r;

 if (!phy || irq != phy->i2c_dev->irq) {
  WARN_ON_ONCE(1);
  return IRQ_NONE;
 }

 client = phy->i2c_dev;
 dev_dbg(&client->dev, "IRQ\n");

 if (phy->hard_fault != 0)
  return IRQ_HANDLED;

 if (phy->run_mode == PN544_FW_MODE) {
  phy->fw_cmd_result = pn544_hci_i2c_fw_read_status(phy);
  schedule_work(&phy->fw_work);
 } else {
  r = pn544_hci_i2c_read(phy, &skb);
  if (r == -EREMOTEIO) {
   phy->hard_fault = r;

   nfc_hci_recv_frame(phy->hdev, ((void*)0));

   return IRQ_HANDLED;
  } else if ((r == -ENOMEM) || (r == -EBADMSG)) {
   return IRQ_HANDLED;
  }

  nfc_hci_recv_frame(phy->hdev, skb);
 }
 return IRQ_HANDLED;
}
