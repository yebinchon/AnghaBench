
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_sess_err_stats {int cxn_timeout_errors; } ;
struct iscsi_tiqn {struct iscsi_sess_err_stats sess_err_stats; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iscsi_tiqn* iscsi_sess_err_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t iscsi_stat_sess_err_cxn_errors_show(struct config_item *item,
  char *page)
{
 struct iscsi_tiqn *tiqn = iscsi_sess_err_tiqn(item);
 struct iscsi_sess_err_stats *sess_err = &tiqn->sess_err_stats;

 return snprintf(page, PAGE_SIZE, "%u\n", sess_err->cxn_timeout_errors);
}
