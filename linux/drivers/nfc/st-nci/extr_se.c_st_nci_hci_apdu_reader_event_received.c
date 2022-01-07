
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int bwi_active; int wt_timeout; int bwi_timer; int cb_context; int (* cb ) (int ,int ,int ,int ) ;} ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct sk_buff {int len; int data; } ;
struct nci_dev {TYPE_2__* nfc_dev; } ;
struct TYPE_4__ {int dev; } ;




 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nfc_err (int *,char*) ;
 int pr_debug (char*,int) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static int st_nci_hci_apdu_reader_event_received(struct nci_dev *ndev,
         u8 event,
         struct sk_buff *skb)
{
 int r = 0;
 struct st_nci_info *info = nci_get_drvdata(ndev);

 pr_debug("apdu reader gate event: %x\n", event);

 switch (event) {
 case 129:
  del_timer_sync(&info->se_info.bwi_timer);
  info->se_info.bwi_active = 0;
  info->se_info.cb(info->se_info.cb_context,
     skb->data, skb->len, 0);
 break;
 case 128:
  mod_timer(&info->se_info.bwi_timer, jiffies +
     msecs_to_jiffies(info->se_info.wt_timeout));
 break;
 default:
  nfc_err(&ndev->nfc_dev->dev, "Unexpected event on apdu reader gate\n");
  return 1;
 }

 kfree_skb(skb);
 return r;
}
