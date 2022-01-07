
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct da8xx_usb_phy {int regmap; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int CFGCHIP (int) ;
 int CFGCHIP2_OTGMODE_FORCE_DEVICE ;
 int CFGCHIP2_OTGMODE_FORCE_HOST ;
 int CFGCHIP2_OTGMODE_MASK ;
 int CFGCHIP2_OTGMODE_NO_OVERRIDE ;
 int EINVAL ;



 struct da8xx_usb_phy* phy_get_drvdata (struct phy*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int da8xx_usb20_phy_set_mode(struct phy *phy,
        enum phy_mode mode, int submode)
{
 struct da8xx_usb_phy *d_phy = phy_get_drvdata(phy);
 u32 val;

 switch (mode) {
 case 129:
  val = CFGCHIP2_OTGMODE_FORCE_HOST;
  break;
 case 130:
  val = CFGCHIP2_OTGMODE_FORCE_DEVICE;
  break;
 case 128:
  val = CFGCHIP2_OTGMODE_NO_OVERRIDE;
  break;
 default:
  return -EINVAL;
 }

 regmap_write_bits(d_phy->regmap, CFGCHIP(2), CFGCHIP2_OTGMODE_MASK,
     val);

 return 0;
}
