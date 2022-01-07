
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_sess_err_stats {int digest_errors; int cxn_timeout_errors; int pdu_format_errors; int lock; } ;
struct iscsi_tiqn {struct iscsi_sess_err_stats sess_err_stats; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iscsi_tiqn* iscsi_instance_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static ssize_t iscsi_stat_instance_fail_sess_show(struct config_item *item,
  char *page)
{
 struct iscsi_tiqn *tiqn = iscsi_instance_tiqn(item);
 struct iscsi_sess_err_stats *sess_err = &tiqn->sess_err_stats;
 u32 sess_err_count;

 spin_lock_bh(&sess_err->lock);
 sess_err_count = (sess_err->digest_errors +
     sess_err->cxn_timeout_errors +
     sess_err->pdu_format_errors);
 spin_unlock_bh(&sess_err->lock);

 return snprintf(page, PAGE_SIZE, "%u\n", sess_err_count);
}
