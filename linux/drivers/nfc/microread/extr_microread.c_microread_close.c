
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_hci_dev {int dummy; } ;
struct microread_info {int phy_id; TYPE_1__* phy_ops; } ;
struct TYPE_2__ {int (* disable ) (int ) ;} ;


 struct microread_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int stub1 (int ) ;

__attribute__((used)) static void microread_close(struct nfc_hci_dev *hdev)
{
 struct microread_info *info = nfc_hci_get_clientdata(hdev);

 info->phy_ops->disable(info->phy_id);
}
