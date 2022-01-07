
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_priv_data {int enabled; } ;
struct omap_overlay {int dummy; } ;


 int data_lock ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool dss_ovl_is_enabled(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 unsigned long flags;
 bool e;

 spin_lock_irqsave(&data_lock, flags);

 e = op->enabled;

 spin_unlock_irqrestore(&data_lock, flags);

 return e;
}
