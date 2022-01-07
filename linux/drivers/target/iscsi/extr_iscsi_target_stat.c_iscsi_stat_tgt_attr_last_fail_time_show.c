
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_login_stats {int lock; scalar_t__ last_fail_time; } ;
struct iscsi_tiqn {struct iscsi_login_stats login_stats; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int HZ ;
 int INITIAL_JIFFIES ;
 int PAGE_SIZE ;
 struct iscsi_tiqn* iscsi_tgt_attr_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t iscsi_stat_tgt_attr_last_fail_time_show(struct config_item *item,
  char *page)
{
 struct iscsi_tiqn *tiqn = iscsi_tgt_attr_tiqn(item);
 struct iscsi_login_stats *lstat = &tiqn->login_stats;
 u32 last_fail_time;

 spin_lock(&lstat->lock);
 last_fail_time = lstat->last_fail_time ?
   (u32)(((u32)lstat->last_fail_time -
    INITIAL_JIFFIES) * 100 / HZ) : 0;
 spin_unlock(&lstat->lock);

 return snprintf(page, PAGE_SIZE, "%u\n", last_fail_time);
}
