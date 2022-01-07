
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct config_group {struct config_item cg_item; } ;
struct t10_alua_lu_gp {struct config_group lu_gp_group; } ;


 scalar_t__ IS_ERR (struct t10_alua_lu_gp*) ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int config_item_name (struct config_item*) ;
 struct t10_alua_lu_gp* core_alua_allocate_lu_gp (char const*,int ) ;
 int pr_debug (char*,int ) ;
 int target_core_alua_lu_gp_cit ;

__attribute__((used)) static struct config_group *target_core_alua_create_lu_gp(
 struct config_group *group,
 const char *name)
{
 struct t10_alua_lu_gp *lu_gp;
 struct config_group *alua_lu_gp_cg = ((void*)0);
 struct config_item *alua_lu_gp_ci = ((void*)0);

 lu_gp = core_alua_allocate_lu_gp(name, 0);
 if (IS_ERR(lu_gp))
  return ((void*)0);

 alua_lu_gp_cg = &lu_gp->lu_gp_group;
 alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;

 config_group_init_type_name(alua_lu_gp_cg, name,
   &target_core_alua_lu_gp_cit);

 pr_debug("Target_Core_ConfigFS: Allocated ALUA Logical Unit"
  " Group: core/alua/lu_gps/%s\n",
  config_item_name(alua_lu_gp_ci));

 return alua_lu_gp_cg;

}
