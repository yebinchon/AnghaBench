
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int bwi_active; int wt_timeout; int bwi_timer; void* cb_context; int cb; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct nfc_hci_dev {int dummy; } ;
typedef int se_io_cb_t ;


 int ENODEV ;
 int ST21NFCA_APDU_READER_GATE ;

 int ST21NFCA_EVT_TRANSMIT_DATA ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,size_t) ;
 int pr_debug (char*,int) ;

int st21nfca_hci_se_io(struct nfc_hci_dev *hdev, u32 se_idx,
   u8 *apdu, size_t apdu_length,
   se_io_cb_t cb, void *cb_context)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 pr_debug("se_io %x\n", se_idx);

 switch (se_idx) {
 case 128:
  info->se_info.cb = cb;
  info->se_info.cb_context = cb_context;
  mod_timer(&info->se_info.bwi_timer, jiffies +
     msecs_to_jiffies(info->se_info.wt_timeout));
  info->se_info.bwi_active = 1;
  return nfc_hci_send_event(hdev, ST21NFCA_APDU_READER_GATE,
     ST21NFCA_EVT_TRANSMIT_DATA,
     apdu, apdu_length);
 default:
  return -ENODEV;
 }
}
