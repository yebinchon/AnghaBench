
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_info {int dummy; } ;
struct ovl_priv_data {struct omap_overlay_info user_info; } ;
struct omap_overlay {int dummy; } ;


 int data_lock ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dss_ovl_get_info(struct omap_overlay *ovl,
  struct omap_overlay_info *info)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 unsigned long flags;

 spin_lock_irqsave(&data_lock, flags);

 *info = op->user_info;

 spin_unlock_irqrestore(&data_lock, flags);
}
