
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc7301_priv {int regmap; } ;


 int regmap_get_reg_stride (int ) ;
 int regmap_update_bits (int ,int,int ,int ) ;

__attribute__((used)) static void rtc7301_update_bits(struct rtc7301_priv *priv, unsigned int reg,
    u8 mask, u8 val)
{
 int reg_stride = regmap_get_reg_stride(priv->regmap);

 regmap_update_bits(priv->regmap, reg_stride * reg, mask, val);
}
