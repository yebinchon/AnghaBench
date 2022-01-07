
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {int bwi_active; int xch_error; int cb_context; int (* cb ) (int ,int *,int ,int ) ;} ;
struct st21nfca_hci_info {TYPE_1__ se_info; int hdev; } ;
struct TYPE_4__ {int bwi_timer; } ;


 int ETIME ;
 int ST21NFCA_APDU_READER_GATE ;
 int ST21NFCA_DEVICE_MGNT_GATE ;
 int ST21NFCA_EVT_SE_HARD_RESET ;
 int ST21NFCA_EVT_SE_SOFT_RESET ;
 struct st21nfca_hci_info* from_timer (int ,struct timer_list*,int ) ;
 struct st21nfca_hci_info* info ;
 int nfc_hci_send_event (int ,int ,int ,int*,int) ;
 int pr_debug (char*) ;
 TYPE_2__ se_info ;
 int stub1 (int ,int *,int ,int ) ;

__attribute__((used)) static void st21nfca_se_wt_timeout(struct timer_list *t)
{
 u8 param = 0x01;
 struct st21nfca_hci_info *info = from_timer(info, t,
          se_info.bwi_timer);

 pr_debug("\n");

 info->se_info.bwi_active = 0;

 if (!info->se_info.xch_error) {
  info->se_info.xch_error = 1;
  nfc_hci_send_event(info->hdev, ST21NFCA_APDU_READER_GATE,
    ST21NFCA_EVT_SE_SOFT_RESET, ((void*)0), 0);
 } else {
  info->se_info.xch_error = 0;
  nfc_hci_send_event(info->hdev, ST21NFCA_DEVICE_MGNT_GATE,
    ST21NFCA_EVT_SE_HARD_RESET, &param, 1);
 }
 info->se_info.cb(info->se_info.cb_context, ((void*)0), 0, -ETIME);
}
