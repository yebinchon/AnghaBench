
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bwi_active; int se_active; int se_active_timer; int bwi_timer; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct nci_dev {int dummy; } ;


 int del_timer_sync (int *) ;
 struct st_nci_info* nci_get_drvdata (struct nci_dev*) ;

void st_nci_se_deinit(struct nci_dev *ndev)
{
 struct st_nci_info *info = nci_get_drvdata(ndev);

 if (info->se_info.bwi_active)
  del_timer_sync(&info->se_info.bwi_timer);
 if (info->se_info.se_active)
  del_timer_sync(&info->se_info.se_active_timer);

 info->se_info.se_active = 0;
 info->se_info.bwi_active = 0;
}
