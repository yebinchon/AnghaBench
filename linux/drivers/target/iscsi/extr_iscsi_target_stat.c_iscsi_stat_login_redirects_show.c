
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_login_stats {int redirects; int lock; } ;
struct iscsi_tiqn {struct iscsi_login_stats login_stats; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iscsi_tiqn* iscsi_login_stat_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t iscsi_stat_login_redirects_show(struct config_item *item,
  char *page)
{
 struct iscsi_tiqn *tiqn = iscsi_login_stat_tiqn(item);
 struct iscsi_login_stats *lstat = &tiqn->login_stats;
 ssize_t ret;

 spin_lock(&lstat->lock);
 ret = snprintf(page, PAGE_SIZE, "%u\n", lstat->redirects);
 spin_unlock(&lstat->lock);

 return ret;
}
