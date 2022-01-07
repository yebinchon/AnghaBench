
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc7301_priv {int regmap; } ;


 int regmap_get_reg_stride (int ) ;
 int regmap_write (int ,int,int ) ;

__attribute__((used)) static void rtc7301_write(struct rtc7301_priv *priv, u8 val, unsigned int reg)
{
 int reg_stride = regmap_get_reg_stride(priv->regmap);

 regmap_write(priv->regmap, reg_stride * reg, val);
}
