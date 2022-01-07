
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_id; int tg_pt_gp_valid_id; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct t10_alua_tg_pt_gp* to_tg_pt_gp (struct config_item*) ;

__attribute__((used)) static ssize_t target_tg_pt_gp_tg_pt_gp_id_show(struct config_item *item,
  char *page)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp = to_tg_pt_gp(item);

 if (!tg_pt_gp->tg_pt_gp_valid_id)
  return 0;
 return sprintf(page, "%hu\n", tg_pt_gp->tg_pt_gp_id);
}
