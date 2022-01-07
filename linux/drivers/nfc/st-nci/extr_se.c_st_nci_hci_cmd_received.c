
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {int se_active; int req_completion; int se_active_timer; } ;
struct st_nci_info {TYPE_3__ se_info; } ;
struct sk_buff {int dummy; } ;
struct nci_dev {TYPE_2__* hci_dev; } ;
struct TYPE_5__ {int count_pipes; int expected_pipes; TYPE_1__* pipes; } ;
struct TYPE_4__ {size_t gate; int host; } ;



 size_t ST_NCI_APDU_READER_GATE ;
 int ST_NCI_UICC_HOST_ID ;
 int complete (int *) ;
 int del_timer_sync (int *) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int pr_debug (char*,size_t) ;

void st_nci_hci_cmd_received(struct nci_dev *ndev, u8 pipe, u8 cmd,
          struct sk_buff *skb)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);
 u8 gate = ndev->hci_dev->pipes[pipe].gate;

 pr_debug("cmd: %x\n", cmd);

 switch (cmd) {
 case 128:
  if (gate != ST_NCI_APDU_READER_GATE &&
      ndev->hci_dev->pipes[pipe].host != ST_NCI_UICC_HOST_ID)
   ndev->hci_dev->count_pipes++;

  if (ndev->hci_dev->count_pipes ==
      ndev->hci_dev->expected_pipes) {
   del_timer_sync(&info->se_info.se_active_timer);
   info->se_info.se_active = 0;
   ndev->hci_dev->count_pipes = 0;
   complete(&info->se_info.req_completion);
  }
 break;
 }
}
