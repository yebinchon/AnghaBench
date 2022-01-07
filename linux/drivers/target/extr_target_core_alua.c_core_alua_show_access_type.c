
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_type; } ;
typedef int ssize_t ;


 int TPGS_EXPLICIT_ALUA ;
 int TPGS_IMPLICIT_ALUA ;
 int sprintf (char*,char*) ;

ssize_t core_alua_show_access_type(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 char *page)
{
 if ((tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_EXPLICIT_ALUA) &&
     (tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_IMPLICIT_ALUA))
  return sprintf(page, "Implicit and Explicit\n");
 else if (tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_IMPLICIT_ALUA)
  return sprintf(page, "Implicit\n");
 else if (tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_EXPLICIT_ALUA)
  return sprintf(page, "Explicit\n");
 else
  return sprintf(page, "None\n");
}
