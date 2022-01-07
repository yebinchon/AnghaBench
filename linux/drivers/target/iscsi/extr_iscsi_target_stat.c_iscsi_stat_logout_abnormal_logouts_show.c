
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_logout_stats {int abnormal_logouts; } ;
struct iscsi_tiqn {struct iscsi_logout_stats logout_stats; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iscsi_tiqn* iscsi_logout_stat_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t iscsi_stat_logout_abnormal_logouts_show(struct config_item *item,
  char *page)
{
 struct iscsi_tiqn *tiqn = iscsi_logout_stat_tiqn(item);
 struct iscsi_logout_stats *lstats = &tiqn->logout_stats;

 return snprintf(page, PAGE_SIZE, "%u\n", lstats->abnormal_logouts);
}
