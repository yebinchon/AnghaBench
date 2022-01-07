
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int se_active; TYPE_2__* se_status; int req_completion; int se_active_timer; } ;
struct st_nci_info {TYPE_3__ se_info; } ;
struct sk_buff {int len; scalar_t__* data; } ;
struct nci_dev {TYPE_1__* hci_dev; } ;
struct TYPE_5__ {scalar_t__ is_uicc_present; scalar_t__ is_ese_present; } ;
struct TYPE_4__ {int expected_pipes; int count_pipes; } ;


 int EINVAL ;
 int NCI_HCI_ADMIN_GATE ;
 int NCI_HCI_ADMIN_PARAM_HOST_LIST ;
 int NCI_HCI_ANY_OK ;
 int NCI_STATUS_OK ;

 int ST_NCI_SE_COUNT_PIPE_EMBEDDED ;
 int ST_NCI_SE_COUNT_PIPE_UICC ;
 scalar_t__ ST_NCI_SE_MODE_OFF ;
 scalar_t__ ST_NCI_SE_MODE_ON ;
 int ST_NCI_SE_TO_HOT_PLUG ;

 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nci_hci_get_param (struct nci_dev*,int ,int ,struct sk_buff**) ;
 int nci_nfcee_mode_set (struct nci_dev*,scalar_t__,scalar_t__) ;
 int reinit_completion (int *) ;
 int usleep_range (int,int) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int st_nci_control_se(struct nci_dev *ndev, u8 se_idx,
        u8 state)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);
 int r, i;
 struct sk_buff *sk_host_list;
 u8 host_id;

 switch (se_idx) {
 case 128:
  ndev->hci_dev->count_pipes = 0;
  ndev->hci_dev->expected_pipes = ST_NCI_SE_COUNT_PIPE_UICC;
  break;
 case 129:
  ndev->hci_dev->count_pipes = 0;
  ndev->hci_dev->expected_pipes = ST_NCI_SE_COUNT_PIPE_EMBEDDED;
  break;
 default:
  return -EINVAL;
 }





 reinit_completion(&info->se_info.req_completion);
 r = nci_nfcee_mode_set(ndev, se_idx, state);
 if (r != NCI_STATUS_OK)
  return r;

 mod_timer(&info->se_info.se_active_timer, jiffies +
  msecs_to_jiffies(ST_NCI_SE_TO_HOT_PLUG));
 info->se_info.se_active = 1;


 wait_for_completion_interruptible(&info->se_info.req_completion);






 if (info->se_info.se_status->is_ese_present &&
     info->se_info.se_status->is_uicc_present)
  usleep_range(15000, 20000);

 r = nci_hci_get_param(ndev, NCI_HCI_ADMIN_GATE,
   NCI_HCI_ADMIN_PARAM_HOST_LIST, &sk_host_list);
 if (r != NCI_HCI_ANY_OK)
  return r;

 for (i = 0; i < sk_host_list->len &&
  sk_host_list->data[i] != se_idx; i++)
  ;
 host_id = sk_host_list->data[i];
 kfree_skb(sk_host_list);
 if (state == ST_NCI_SE_MODE_ON && host_id == se_idx)
  return se_idx;
 else if (state == ST_NCI_SE_MODE_OFF && host_id != se_idx)
  return se_idx;

 return -1;
}
