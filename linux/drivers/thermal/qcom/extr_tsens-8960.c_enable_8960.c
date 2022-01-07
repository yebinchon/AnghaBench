
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsens_priv {int num_sensors; int tm_map; } ;


 int BIT (scalar_t__) ;
 int CNTL_ADDR ;
 int EN ;
 scalar_t__ SENSOR0_SHIFT ;
 int SLP_CLK_ENA ;
 int SLP_CLK_ENA_8660 ;
 int SW_RST ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int enable_8960(struct tsens_priv *priv, int id)
{
 int ret;
 u32 reg, mask;

 ret = regmap_read(priv->tm_map, CNTL_ADDR, &reg);
 if (ret)
  return ret;

 mask = BIT(id + SENSOR0_SHIFT);
 ret = regmap_write(priv->tm_map, CNTL_ADDR, reg | SW_RST);
 if (ret)
  return ret;

 if (priv->num_sensors > 1)
  reg |= mask | SLP_CLK_ENA | EN;
 else
  reg |= mask | SLP_CLK_ENA_8660 | EN;

 ret = regmap_write(priv->tm_map, CNTL_ADDR, reg);
 if (ret)
  return ret;

 return 0;
}
