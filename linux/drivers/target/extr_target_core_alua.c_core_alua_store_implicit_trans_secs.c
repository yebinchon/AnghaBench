
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_implicit_trans_secs; } ;
typedef int ssize_t ;


 unsigned long ALUA_MAX_IMPLICIT_TRANS_SECS ;
 int EINVAL ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int pr_err (char*,...) ;

ssize_t core_alua_store_implicit_trans_secs(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = kstrtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract implicit_trans_secs\n");
  return ret;
 }
 if (tmp > ALUA_MAX_IMPLICIT_TRANS_SECS) {
  pr_err("Passed implicit_trans_secs: %lu, exceeds"
   " ALUA_MAX_IMPLICIT_TRANS_SECS: %d\n", tmp,
   ALUA_MAX_IMPLICIT_TRANS_SECS);
  return -EINVAL;
 }
 tg_pt_gp->tg_pt_gp_implicit_trans_secs = (int)tmp;

 return count;
}
