
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_priv_data {int user_info_dirty; int info_dirty; int user_info; int info; } ;
struct omap_overlay {int dummy; } ;


 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;

__attribute__((used)) static void omap_dss_mgr_apply_ovl(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op;

 op = get_ovl_priv(ovl);

 if (!op->user_info_dirty)
  return;

 op->user_info_dirty = 0;
 op->info_dirty = 1;
 op->info = op->user_info;
}
