
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sc27xx_fgu_data {int battery; int lock; scalar_t__ base; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SC27XX_FGU_INT_CLR ;
 scalar_t__ SC27XX_FGU_INT_STS ;
 int SC27XX_FGU_LOW_OVERLOAD_INT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (int ) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int sc27xx_fgu_capacity_calibration (struct sc27xx_fgu_data*,int,int) ;
 int sc27xx_fgu_get_capacity (struct sc27xx_fgu_data*,int*) ;

__attribute__((used)) static irqreturn_t sc27xx_fgu_interrupt(int irq, void *dev_id)
{
 struct sc27xx_fgu_data *data = dev_id;
 int ret, cap;
 u32 status;

 mutex_lock(&data->lock);

 ret = regmap_read(data->regmap, data->base + SC27XX_FGU_INT_STS,
     &status);
 if (ret)
  goto out;

 ret = regmap_update_bits(data->regmap, data->base + SC27XX_FGU_INT_CLR,
     status, status);
 if (ret)
  goto out;





 if (!(status & SC27XX_FGU_LOW_OVERLOAD_INT))
  goto out;

 ret = sc27xx_fgu_get_capacity(data, &cap);
 if (ret)
  goto out;

 sc27xx_fgu_capacity_calibration(data, cap, 1);

out:
 mutex_unlock(&data->lock);

 power_supply_changed(data->battery);
 return IRQ_HANDLED;
}
