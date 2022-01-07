
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_tg_pt_secondary_stat; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

ssize_t core_alua_show_secondary_status(
 struct se_lun *lun,
 char *page)
{
 return sprintf(page, "%d\n", lun->lun_tg_pt_secondary_stat);
}
