
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int bwi_active; int wt_timeout; int bwi_timer; int cb_context; int (* cb ) (int ,int ,int ,int ) ;} ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct sk_buff {int len; int data; } ;
struct nfc_hci_dev {TYPE_2__* ndev; } ;
struct TYPE_4__ {int dev; } ;


 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_EVT_SE_END_OF_APDU_TRANSFER ;


 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int nfc_err (int *,char*) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int ) ;
 int pr_debug (char*,int) ;
 int stub1 (int ,int ,int ,int ) ;

int st21nfca_apdu_reader_event_received(struct nfc_hci_dev *hdev,
     u8 event, struct sk_buff *skb)
{
 int r = 0;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 pr_debug("apdu reader gate event: %x\n", event);

 switch (event) {
 case 129:
  del_timer_sync(&info->se_info.bwi_timer);
  info->se_info.bwi_active = 0;
  r = nfc_hci_send_event(hdev, ST21NFCA_DEVICE_MGNT_GATE,
    ST21NFCA_EVT_SE_END_OF_APDU_TRANSFER, ((void*)0), 0);
  if (r < 0)
   goto exit;

  info->se_info.cb(info->se_info.cb_context,
   skb->data, skb->len, 0);
  break;
 case 128:
  mod_timer(&info->se_info.bwi_timer, jiffies +
    msecs_to_jiffies(info->se_info.wt_timeout));
  break;
 default:
  nfc_err(&hdev->ndev->dev, "Unexpected event on apdu reader gate\n");
  return 1;
 }

exit:
 kfree_skb(skb);
 return r;
}
