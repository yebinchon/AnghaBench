
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_msr_id {unsigned int id; struct meson_msr* priv; } ;
struct meson_msr {int regmap; } ;


 int DIV_ROUND_CLOSEST_ULL (unsigned int,unsigned int) ;
 int EINVAL ;
 int FIELD_PREP (int,unsigned int) ;
 unsigned int MSR_BUSY ;
 int MSR_CLK_REG0 ;
 int MSR_CLK_REG2 ;
 int MSR_CLK_SRC ;
 int MSR_DURATION ;
 int MSR_ENABLE ;
 int MSR_RUN ;
 unsigned int MSR_VAL_MASK ;
 int measure_lock ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int meson_measure_id(struct meson_msr_id *clk_msr_id,
          unsigned int duration)
{
 struct meson_msr *priv = clk_msr_id->priv;
 unsigned int val;
 int ret;

 ret = mutex_lock_interruptible(&measure_lock);
 if (ret)
  return ret;

 regmap_write(priv->regmap, MSR_CLK_REG0, 0);


 regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_DURATION,
      FIELD_PREP(MSR_DURATION, duration - 1));


 regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_CLK_SRC,
      FIELD_PREP(MSR_CLK_SRC, clk_msr_id->id));


 regmap_update_bits(priv->regmap, MSR_CLK_REG0,
      MSR_RUN | MSR_ENABLE,
      MSR_RUN | MSR_ENABLE);

 ret = regmap_read_poll_timeout(priv->regmap, MSR_CLK_REG0,
           val, !(val & MSR_BUSY), 10, 10000);
 if (ret) {
  mutex_unlock(&measure_lock);
  return ret;
 }


 regmap_update_bits(priv->regmap, MSR_CLK_REG0, MSR_ENABLE, 0);


 regmap_read(priv->regmap, MSR_CLK_REG2, &val);

 mutex_unlock(&measure_lock);

 if (val >= MSR_VAL_MASK)
  return -EINVAL;

 return DIV_ROUND_CLOSEST_ULL((val & MSR_VAL_MASK) * 1000000ULL,
         duration);
}
