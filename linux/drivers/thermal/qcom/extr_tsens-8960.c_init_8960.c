
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tsens_priv {int num_sensors; int tm_map; TYPE_1__* sensor; int dev; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 int CNTL_ADDR ;
 int CONFIG ;
 int CONFIG_8660 ;
 int CONFIG_ADDR ;
 int CONFIG_MASK ;
 int CONFIG_MASK_8660 ;
 int CONFIG_SHIFT_8660 ;
 int EN ;
 int ENODEV ;
 int GENMASK (int,int ) ;
 int MEASURE_PERIOD ;
 scalar_t__ S0_STATUS_ADDR ;
 int SENSOR0_SHIFT ;
 int SLP_CLK_ENA ;
 int SLP_CLK_ENA_8660 ;
 int SW_RST ;
 int dev_get_regmap (int ,int *) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int init_8960(struct tsens_priv *priv)
{
 int ret, i;
 u32 reg_cntl;

 priv->tm_map = dev_get_regmap(priv->dev, ((void*)0));
 if (!priv->tm_map)
  return -ENODEV;







 for (i = 0; i < priv->num_sensors; i++) {
  if (i >= 5)
   priv->sensor[i].status = S0_STATUS_ADDR + 40;
  priv->sensor[i].status += i * 4;
 }

 reg_cntl = SW_RST;
 ret = regmap_update_bits(priv->tm_map, CNTL_ADDR, SW_RST, reg_cntl);
 if (ret)
  return ret;

 if (priv->num_sensors > 1) {
  reg_cntl |= SLP_CLK_ENA | (MEASURE_PERIOD << 18);
  reg_cntl &= ~SW_RST;
  ret = regmap_update_bits(priv->tm_map, CONFIG_ADDR,
      CONFIG_MASK, CONFIG);
 } else {
  reg_cntl |= SLP_CLK_ENA_8660 | (MEASURE_PERIOD << 16);
  reg_cntl &= ~CONFIG_MASK_8660;
  reg_cntl |= CONFIG_8660 << CONFIG_SHIFT_8660;
 }

 reg_cntl |= GENMASK(priv->num_sensors - 1, 0) << SENSOR0_SHIFT;
 ret = regmap_write(priv->tm_map, CNTL_ADDR, reg_cntl);
 if (ret)
  return ret;

 reg_cntl |= EN;
 ret = regmap_write(priv->tm_map, CNTL_ADDR, reg_cntl);
 if (ret)
  return ret;

 return 0;
}
