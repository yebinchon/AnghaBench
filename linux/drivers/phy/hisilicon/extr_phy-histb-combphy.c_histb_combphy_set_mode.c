
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct histb_combphy_mode {int select; int shift; int mask; int reg; } ;
struct histb_combphy_priv {struct regmap* syscon; struct histb_combphy_mode mode; } ;


 int COMBPHY_MODE_PCIE ;
 int COMBPHY_MODE_SATA ;
 int COMBPHY_MODE_USB3 ;
 int EINVAL ;



 scalar_t__ is_mode_fixed (struct histb_combphy_mode*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;

__attribute__((used)) static int histb_combphy_set_mode(struct histb_combphy_priv *priv)
{
 struct histb_combphy_mode *mode = &priv->mode;
 struct regmap *syscon = priv->syscon;
 u32 hw_sel;

 if (is_mode_fixed(mode))
  return 0;

 switch (mode->select) {
 case 129:
  hw_sel = COMBPHY_MODE_SATA;
  break;
 case 130:
  hw_sel = COMBPHY_MODE_PCIE;
  break;
 case 128:
  hw_sel = COMBPHY_MODE_USB3;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(syscon, mode->reg, mode->mask,
      hw_sel << mode->shift);
}
