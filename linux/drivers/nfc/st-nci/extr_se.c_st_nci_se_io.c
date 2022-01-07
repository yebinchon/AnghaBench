
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int bwi_active; int wt_timeout; int bwi_timer; void* cb_context; int cb; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct nci_dev {int dummy; } ;
typedef int se_io_cb_t ;


 int ENODEV ;
 int ST_NCI_APDU_READER_GATE ;

 int ST_NCI_EVT_TRANSMIT_DATA ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int nci_hci_send_event (struct nci_dev*,int ,int ,int *,size_t) ;
 int pr_debug (char*) ;

int st_nci_se_io(struct nci_dev *ndev, u32 se_idx,
         u8 *apdu, size_t apdu_length,
         se_io_cb_t cb, void *cb_context)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);

 pr_debug("\n");

 switch (se_idx) {
 case 128:
  info->se_info.cb = cb;
  info->se_info.cb_context = cb_context;
  mod_timer(&info->se_info.bwi_timer, jiffies +
     msecs_to_jiffies(info->se_info.wt_timeout));
  info->se_info.bwi_active = 1;
  return nci_hci_send_event(ndev, ST_NCI_APDU_READER_GATE,
     ST_NCI_EVT_TRANSMIT_DATA, apdu,
     apdu_length);
 default:
  return -ENODEV;
 }
}
