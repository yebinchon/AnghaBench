
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int se_active; int se_active_timer; int req_completion; } ;
struct st_nci_info {TYPE_2__ se_info; } ;
struct sk_buff {int dummy; } ;
struct nci_dev {TYPE_1__* nfc_dev; } ;
struct TYPE_3__ {int dev; } ;



 int ST_NCI_EVT_HOT_PLUG_IS_INHIBITED (struct sk_buff*) ;
 int ST_NCI_SE_TO_PIPES ;
 int complete (int *) ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nfc_err (int *,char*) ;

__attribute__((used)) static void st_nci_hci_admin_event_received(struct nci_dev *ndev,
           u8 event, struct sk_buff *skb)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);

 switch (event) {
 case 128:
  if (info->se_info.se_active) {
   if (!ST_NCI_EVT_HOT_PLUG_IS_INHIBITED(skb)) {
    del_timer_sync(&info->se_info.se_active_timer);
    info->se_info.se_active = 0;
    complete(&info->se_info.req_completion);
   } else {
    mod_timer(&info->se_info.se_active_timer,
          jiffies +
          msecs_to_jiffies(ST_NCI_SE_TO_PIPES));
   }
  }
 break;
 default:
  nfc_err(&ndev->nfc_dev->dev, "Unexpected event on admin gate\n");
 }
}
