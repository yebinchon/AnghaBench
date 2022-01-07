
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_pref; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int pr_err (char*,...) ;

ssize_t core_alua_store_preferred_bit(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = kstrtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract preferred ALUA value\n");
  return ret;
 }
 if ((tmp != 0) && (tmp != 1)) {
  pr_err("Illegal value for preferred ALUA: %lu\n", tmp);
  return -EINVAL;
 }
 tg_pt_gp->tg_pt_gp_pref = (int)tmp;

 return count;
}
