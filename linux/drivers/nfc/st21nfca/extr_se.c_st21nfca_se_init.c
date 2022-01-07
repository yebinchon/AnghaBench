
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bwi_active; int se_active; int xch_error; int wt_timeout; scalar_t__ expected_pipes; scalar_t__ count_pipes; int se_active_timer; int bwi_timer; int req_completion; } ;
struct st21nfca_hci_info {TYPE_1__ se_info; } ;
struct nfc_hci_dev {int dummy; } ;


 int ST21NFCA_ATR_DEFAULT_BWI ;
 int ST21NFCA_BWI_TO_TIMEOUT (int ) ;
 int init_completion (int *) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int st21nfca_se_activation_timeout ;
 int st21nfca_se_wt_timeout ;
 int timer_setup (int *,int ,int ) ;

void st21nfca_se_init(struct nfc_hci_dev *hdev)
{
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 init_completion(&info->se_info.req_completion);

 timer_setup(&info->se_info.bwi_timer, st21nfca_se_wt_timeout, 0);
 info->se_info.bwi_active = 0;

 timer_setup(&info->se_info.se_active_timer,
      st21nfca_se_activation_timeout, 0);
 info->se_info.se_active = 0;

 info->se_info.count_pipes = 0;
 info->se_info.expected_pipes = 0;

 info->se_info.xch_error = 0;

 info->se_info.wt_timeout =
   ST21NFCA_BWI_TO_TIMEOUT(ST21NFCA_ATR_DEFAULT_BWI);
}
