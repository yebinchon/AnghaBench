
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_nci_se_status {int dummy; } ;
struct TYPE_2__ {int bwi_active; int se_active; int xch_error; struct st_nci_se_status* se_status; int wt_timeout; int se_active_timer; int bwi_timer; int req_completion; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct nci_dev {int dummy; } ;


 int ST_NCI_ATR_DEFAULT_BWI ;
 int ST_NCI_BWI_TO_TIMEOUT (int ) ;
 int init_completion (int *) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;
 int st_nci_se_activation_timeout ;
 int st_nci_se_wt_timeout ;
 int timer_setup (int *,int ,int ) ;

int st_nci_se_init(struct nci_dev *ndev, struct st_nci_se_status *se_status)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);

 init_completion(&info->se_info.req_completion);

 timer_setup(&info->se_info.bwi_timer, st_nci_se_wt_timeout, 0);
 info->se_info.bwi_active = 0;

 timer_setup(&info->se_info.se_active_timer,
      st_nci_se_activation_timeout, 0);
 info->se_info.se_active = 0;

 info->se_info.xch_error = 0;

 info->se_info.wt_timeout =
  ST_NCI_BWI_TO_TIMEOUT(ST_NCI_ATR_DEFAULT_BWI);

 info->se_info.se_status = se_status;

 return 0;
}
