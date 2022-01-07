
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_priv_data {int enabled; int extra_info_dirty; } ;
struct omap_overlay {int dummy; } ;


 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;

__attribute__((used)) static void dss_apply_ovl_enable(struct omap_overlay *ovl, bool enable)
{
 struct ovl_priv_data *op;

 op = get_ovl_priv(ovl);

 if (op->enabled == enable)
  return;

 op->enabled = enable;
 op->extra_info_dirty = 1;
}
