
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int curr_nfc_dep_pni; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {TYPE_2__* ndev; } ;
struct TYPE_4__ {int dev; } ;







 int kfree_skb (struct sk_buff*) ;
 int nfc_err (int *,char*) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int pr_debug (char*,int) ;
 int st21nfca_tm_event_send_data (struct nfc_hci_dev*,struct sk_buff*) ;

int st21nfca_dep_event_received(struct nfc_hci_dev *hdev,
    u8 event, struct sk_buff *skb)
{
 int r = 0;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 pr_debug("dep event: %d\n", event);

 switch (event) {
 case 132:
  info->dep_info.curr_nfc_dep_pni = 0;
  break;
 case 131:
  break;
 case 129:
  break;
 case 130:
  break;
 case 128:
  r = st21nfca_tm_event_send_data(hdev, skb);
  if (r < 0)
   return r;
  return 0;
 default:
  nfc_err(&hdev->ndev->dev, "Unexpected event on card f gate\n");
  return 1;
 }
 kfree_skb(skb);
 return r;
}
