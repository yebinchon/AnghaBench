
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_thermal_priv {struct rcar_thermal_common* common; } ;
struct rcar_thermal_common {int lock; } ;


 int INTMSK ;
 int rcar_has_irq_support (struct rcar_thermal_priv*) ;
 int rcar_id_to_shift (struct rcar_thermal_priv*) ;
 int rcar_thermal_common_bset (struct rcar_thermal_common*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _rcar_thermal_irq_ctrl(struct rcar_thermal_priv *priv, int enable)
{
 struct rcar_thermal_common *common = priv->common;
 unsigned long flags;
 u32 mask = 0x3 << rcar_id_to_shift(priv);

 if (!rcar_has_irq_support(priv))
  return;

 spin_lock_irqsave(&common->lock, flags);

 rcar_thermal_common_bset(common, INTMSK, mask, enable ? 0 : mask);

 spin_unlock_irqrestore(&common->lock, flags);
}
