
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_write_metadata; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int pr_err (char*,...) ;
 struct t10_alua_tg_pt_gp* to_tg_pt_gp (struct config_item*) ;

__attribute__((used)) static ssize_t target_tg_pt_gp_alua_write_metadata_store(
  struct config_item *item, const char *page, size_t count)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp = to_tg_pt_gp(item);
 unsigned long tmp;
 int ret;

 ret = kstrtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract alua_write_metadata\n");
  return ret;
 }

 if ((tmp != 0) && (tmp != 1)) {
  pr_err("Illegal value for alua_write_metadata:"
   " %lu\n", tmp);
  return -EINVAL;
 }
 tg_pt_gp->tg_pt_gp_write_metadata = (int)tmp;

 return count;
}
