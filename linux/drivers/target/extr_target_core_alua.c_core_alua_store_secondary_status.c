
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_tg_pt_secondary_stat; } ;
typedef int ssize_t ;


 unsigned long ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG ;
 unsigned long ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA ;
 unsigned long ALUA_STATUS_NONE ;
 int EINVAL ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int pr_err (char*,...) ;

ssize_t core_alua_store_secondary_status(
 struct se_lun *lun,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = kstrtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract alua_tg_pt_status\n");
  return ret;
 }
 if ((tmp != ALUA_STATUS_NONE) &&
     (tmp != ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG) &&
     (tmp != ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA)) {
  pr_err("Illegal value for alua_tg_pt_status: %lu\n",
    tmp);
  return -EINVAL;
 }
 lun->lun_tg_pt_secondary_stat = (int)tmp;

 return count;
}
