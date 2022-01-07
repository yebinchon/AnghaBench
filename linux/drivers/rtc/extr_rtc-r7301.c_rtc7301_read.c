
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct rtc7301_priv {int regmap; } ;


 int regmap_get_reg_stride (int ) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static u8 rtc7301_read(struct rtc7301_priv *priv, unsigned int reg)
{
 int reg_stride = regmap_get_reg_stride(priv->regmap);
 unsigned int val;

 regmap_read(priv->regmap, reg_stride * reg, &val);

 return val & 0xf;
}
