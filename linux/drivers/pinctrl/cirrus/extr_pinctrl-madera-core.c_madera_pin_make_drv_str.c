
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct madera_pin_private {int dev; } ;


 int MADERA_GP1_DRV_STR_SHIFT ;
 int dev_warn (int ,char*,unsigned int) ;

__attribute__((used)) static u16 madera_pin_make_drv_str(struct madera_pin_private *priv,
          unsigned int milliamps)
{
 switch (milliamps) {
 case 4:
  return 0;
 case 8:
  return 2 << MADERA_GP1_DRV_STR_SHIFT;
 default:
  break;
 }

 dev_warn(priv->dev, "%u mA not a valid drive strength", milliamps);

 return 0;
}
