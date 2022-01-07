
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct timer_list {int dummy; } ;
struct TYPE_5__ {int bwi_active; int xch_error; int cb_context; int (* cb ) (int ,int *,int ,int ) ;} ;
struct st_nci_info {TYPE_2__ se_info; TYPE_1__* ndlc; } ;
struct TYPE_6__ {int bwi_timer; } ;
struct TYPE_4__ {int ndev; } ;


 int ETIME ;
 int ST_NCI_APDU_READER_GATE ;
 int ST_NCI_DEVICE_MGNT_GATE ;
 int ST_NCI_EVT_SE_HARD_RESET ;
 int ST_NCI_EVT_SE_SOFT_RESET ;
 struct st_nci_info* from_timer (int ,struct timer_list*,int ) ;
 struct st_nci_info* info ;
 int nci_hci_send_event (int ,int ,int ,int*,int) ;
 int pr_debug (char*) ;
 TYPE_3__ se_info ;
 int stub1 (int ,int *,int ,int ) ;

__attribute__((used)) static void st_nci_se_wt_timeout(struct timer_list *t)
{
 u8 param = 0x01;
 struct st_nci_info *info = from_timer(info, t, se_info.bwi_timer);

 pr_debug("\n");

 info->se_info.bwi_active = 0;

 if (!info->se_info.xch_error) {
  info->se_info.xch_error = 1;
  nci_hci_send_event(info->ndlc->ndev, ST_NCI_APDU_READER_GATE,
    ST_NCI_EVT_SE_SOFT_RESET, ((void*)0), 0);
 } else {
  info->se_info.xch_error = 0;
  nci_hci_send_event(info->ndlc->ndev, ST_NCI_DEVICE_MGNT_GATE,
    ST_NCI_EVT_SE_HARD_RESET, &param, 1);
 }
 info->se_info.cb(info->se_info.cb_context, ((void*)0), 0, -ETIME);
}
