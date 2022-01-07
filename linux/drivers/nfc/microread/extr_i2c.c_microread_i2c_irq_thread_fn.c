
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct microread_i2c_phy {int hard_fault; int hdev; TYPE_1__* i2c_dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq; } ;


 int EBADMSG ;
 int ENOMEM ;
 int EREMOTEIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WARN_ON_ONCE (int) ;
 int microread_i2c_read (struct microread_i2c_phy*,struct sk_buff**) ;
 int nfc_hci_recv_frame (int ,struct sk_buff*) ;

__attribute__((used)) static irqreturn_t microread_i2c_irq_thread_fn(int irq, void *phy_id)
{
 struct microread_i2c_phy *phy = phy_id;
 struct sk_buff *skb = ((void*)0);
 int r;

 if (!phy || irq != phy->i2c_dev->irq) {
  WARN_ON_ONCE(1);
  return IRQ_NONE;
 }

 if (phy->hard_fault != 0)
  return IRQ_HANDLED;

 r = microread_i2c_read(phy, &skb);
 if (r == -EREMOTEIO) {
  phy->hard_fault = r;

  nfc_hci_recv_frame(phy->hdev, ((void*)0));

  return IRQ_HANDLED;
 } else if ((r == -ENOMEM) || (r == -EBADMSG)) {
  return IRQ_HANDLED;
 }

 nfc_hci_recv_frame(phy->hdev, skb);

 return IRQ_HANDLED;
}
