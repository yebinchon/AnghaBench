
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int req_completion; struct sk_buff* rx_skb; } ;
struct st21nfca_hci_info {TYPE_2__ vendor_info; } ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {TYPE_1__* ndev; } ;
struct TYPE_3__ {int dev; } ;



 int complete (int *) ;
 int nfc_err (int *,char*) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;

int st21nfca_hci_loopback_event_received(struct nfc_hci_dev *hdev, u8 event,
      struct sk_buff *skb)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 switch (event) {
 case 128:
  info->vendor_info.rx_skb = skb;
 break;
 default:
  nfc_err(&hdev->ndev->dev, "Unexpected event on loopback gate\n");
 }
 complete(&info->vendor_info.req_completion);
 return 0;
}
