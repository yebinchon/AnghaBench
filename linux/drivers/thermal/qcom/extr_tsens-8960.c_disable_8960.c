
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsens_priv {int num_sensors; int tm_map; } ;


 int CNTL_ADDR ;
 int EN ;
 int GENMASK (int,int ) ;
 int SENSOR0_SHIFT ;
 int SLP_CLK_ENA ;
 int SLP_CLK_ENA_8660 ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void disable_8960(struct tsens_priv *priv)
{
 int ret;
 u32 reg_cntl;
 u32 mask;

 mask = GENMASK(priv->num_sensors - 1, 0);
 mask <<= SENSOR0_SHIFT;
 mask |= EN;

 ret = regmap_read(priv->tm_map, CNTL_ADDR, &reg_cntl);
 if (ret)
  return;

 reg_cntl &= ~mask;

 if (priv->num_sensors > 1)
  reg_cntl &= ~SLP_CLK_ENA;
 else
  reg_cntl &= ~SLP_CLK_ENA_8660;

 regmap_write(priv->tm_map, CNTL_ADDR, reg_cntl);
}
