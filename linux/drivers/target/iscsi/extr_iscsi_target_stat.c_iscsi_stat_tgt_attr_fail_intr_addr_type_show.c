
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_login_stats {scalar_t__ last_intr_fail_ip_family; int lock; } ;
struct iscsi_tiqn {struct iscsi_login_stats login_stats; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ AF_INET6 ;
 int PAGE_SIZE ;
 struct iscsi_tiqn* iscsi_tgt_attr_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t iscsi_stat_tgt_attr_fail_intr_addr_type_show(struct config_item *item,
  char *page)
{
 struct iscsi_tiqn *tiqn = iscsi_tgt_attr_tiqn(item);
 struct iscsi_login_stats *lstat = &tiqn->login_stats;
 int ret;

 spin_lock(&lstat->lock);
 if (lstat->last_intr_fail_ip_family == AF_INET6)
  ret = snprintf(page, PAGE_SIZE, "ipv6\n");
 else
  ret = snprintf(page, PAGE_SIZE, "ipv4\n");
 spin_unlock(&lstat->lock);

 return ret;
}
