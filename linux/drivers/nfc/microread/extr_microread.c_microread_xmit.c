
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;
struct microread_info {int phy_id; TYPE_1__* phy_ops; } ;
struct TYPE_2__ {int (* write ) (int ,struct sk_buff*) ;} ;


 struct microread_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static int microread_xmit(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
 struct microread_info *info = nfc_hci_get_clientdata(hdev);

 return info->phy_ops->write(info->phy_id, skb);
}
