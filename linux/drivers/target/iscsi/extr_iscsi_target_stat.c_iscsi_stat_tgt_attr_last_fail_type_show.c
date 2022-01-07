
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_login_stats {int last_fail_type; int lock; } ;
struct iscsi_tiqn {struct iscsi_login_stats login_stats; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iscsi_tiqn* iscsi_tgt_attr_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t iscsi_stat_tgt_attr_last_fail_type_show(struct config_item *item,
  char *page)
{
 struct iscsi_tiqn *tiqn = iscsi_tgt_attr_tiqn(item);
 struct iscsi_login_stats *lstat = &tiqn->login_stats;
 u32 last_fail_type;

 spin_lock(&lstat->lock);
 last_fail_type = lstat->last_fail_type;
 spin_unlock(&lstat->lock);

 return snprintf(page, PAGE_SIZE, "%u\n", last_fail_type);
}
