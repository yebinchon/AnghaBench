
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_implicit_trans_secs; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

ssize_t core_alua_show_implicit_trans_secs(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 char *page)
{
 return sprintf(page, "%d\n", tg_pt_gp->tg_pt_gp_implicit_trans_secs);
}
