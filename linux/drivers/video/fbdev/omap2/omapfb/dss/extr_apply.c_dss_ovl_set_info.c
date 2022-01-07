
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_info {int dummy; } ;
struct ovl_priv_data {int user_info_dirty; struct omap_overlay_info user_info; } ;
struct omap_overlay {int dummy; } ;


 int data_lock ;
 int dss_ovl_simple_check (struct omap_overlay*,struct omap_overlay_info*) ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dss_ovl_set_info(struct omap_overlay *ovl,
  struct omap_overlay_info *info)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 unsigned long flags;
 int r;

 r = dss_ovl_simple_check(ovl, info);
 if (r)
  return r;

 spin_lock_irqsave(&data_lock, flags);

 op->user_info = *info;
 op->user_info_dirty = 1;

 spin_unlock_irqrestore(&data_lock, flags);

 return 0;
}
