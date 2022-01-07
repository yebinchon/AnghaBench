
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int se_active; int req_completion; int se_active_timer; int expected_pipes; int count_pipes; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct sk_buff {int len; scalar_t__* data; } ;
struct nfc_hci_dev {int dummy; } ;


 int EINVAL ;
 int NFC_HCI_ADMIN_GATE ;
 int NFC_HCI_ADMIN_HOST_LIST ;

 int ST21NFCA_DEVICE_MGNT_GATE ;

 scalar_t__ ST21NFCA_EVT_SE_ACTIVATE ;
 scalar_t__ ST21NFCA_EVT_SE_DEACTIVATE ;
 scalar_t__ ST21NFCA_EVT_UICC_ACTIVATE ;
 scalar_t__ ST21NFCA_EVT_UICC_DEACTIVATE ;
 int ST21NFCA_SE_COUNT_PIPE_EMBEDDED ;
 int ST21NFCA_SE_COUNT_PIPE_UICC ;
 scalar_t__ ST21NFCA_SE_MODE_OFF ;
 scalar_t__ ST21NFCA_SE_MODE_ON ;
 int ST21NFCA_SE_TO_HOT_PLUG ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_get_param (struct nfc_hci_dev*,int ,int ,struct sk_buff**) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,scalar_t__,int *,int ) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int st21nfca_hci_control_se(struct nfc_hci_dev *hdev, u32 se_idx,
    u8 state)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);
 int r, i;
 struct sk_buff *sk_host_list;
 u8 se_event, host_id;

 switch (se_idx) {
 case 129:
  se_event = (state == ST21NFCA_SE_MODE_ON ?
     ST21NFCA_EVT_UICC_ACTIVATE :
     ST21NFCA_EVT_UICC_DEACTIVATE);

  info->se_info.count_pipes = 0;
  info->se_info.expected_pipes = ST21NFCA_SE_COUNT_PIPE_UICC;
  break;
 case 128:
  se_event = (state == ST21NFCA_SE_MODE_ON ?
     ST21NFCA_EVT_SE_ACTIVATE :
     ST21NFCA_EVT_SE_DEACTIVATE);

  info->se_info.count_pipes = 0;
  info->se_info.expected_pipes = ST21NFCA_SE_COUNT_PIPE_EMBEDDED;
  break;
 default:
  return -EINVAL;
 }





 reinit_completion(&info->se_info.req_completion);
 r = nfc_hci_send_event(hdev, ST21NFCA_DEVICE_MGNT_GATE, se_event,
          ((void*)0), 0);
 if (r < 0)
  return r;

 mod_timer(&info->se_info.se_active_timer, jiffies +
  msecs_to_jiffies(ST21NFCA_SE_TO_HOT_PLUG));
 info->se_info.se_active = 1;


 wait_for_completion_interruptible(&info->se_info.req_completion);

 r = nfc_hci_get_param(hdev, NFC_HCI_ADMIN_GATE,
   NFC_HCI_ADMIN_HOST_LIST,
   &sk_host_list);
 if (r < 0)
  return r;

 for (i = 0; i < sk_host_list->len &&
  sk_host_list->data[i] != se_idx; i++)
  ;
 host_id = sk_host_list->data[i];
 kfree_skb(sk_host_list);

 if (state == ST21NFCA_SE_MODE_ON && host_id == se_idx)
  return se_idx;
 else if (state == ST21NFCA_SE_MODE_OFF && host_id != se_idx)
  return se_idx;

 return -1;
}
