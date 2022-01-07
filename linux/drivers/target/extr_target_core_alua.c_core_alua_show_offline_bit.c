
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_tg_pt_secondary_offline; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int sprintf (char*,char*,int) ;

ssize_t core_alua_show_offline_bit(struct se_lun *lun, char *page)
{
 return sprintf(page, "%d\n",
  atomic_read(&lun->lun_tg_pt_secondary_offline));
}
