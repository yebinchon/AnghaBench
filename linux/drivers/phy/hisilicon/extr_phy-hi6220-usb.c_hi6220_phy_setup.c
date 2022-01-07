
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct hi6220_priv {int dev; struct regmap* reg; } ;


 int CTRL4_OTG_PHY_SEL ;
 int CTRL4_PICO_OGDISABLE ;
 int CTRL4_PICO_SIDDQ ;
 int CTRL4_PICO_VBUSVLDEXT ;
 int CTRL4_PICO_VBUSVLDEXTSEL ;
 int CTRL5_PICOPHY_ACAENB ;
 int CTRL5_PICOPHY_BC_MODE ;
 int CTRL5_USBOTG_RES_SEL ;
 int EYE_PATTERN_PARA ;
 int SC_PERIPH_CTRL4 ;
 int SC_PERIPH_CTRL5 ;
 int SC_PERIPH_CTRL8 ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int hi6220_phy_setup(struct hi6220_priv *priv, bool on)
{
 struct regmap *reg = priv->reg;
 u32 val, mask;
 int ret;

 if (on) {
  val = CTRL5_USBOTG_RES_SEL | CTRL5_PICOPHY_ACAENB;
  mask = val | CTRL5_PICOPHY_BC_MODE;
  ret = regmap_update_bits(reg, SC_PERIPH_CTRL5, mask, val);
  if (ret)
   goto out;

  val = CTRL4_PICO_VBUSVLDEXT | CTRL4_PICO_VBUSVLDEXTSEL |
         CTRL4_OTG_PHY_SEL;
  mask = val | CTRL4_PICO_SIDDQ | CTRL4_PICO_OGDISABLE;
  ret = regmap_update_bits(reg, SC_PERIPH_CTRL4, mask, val);
  if (ret)
   goto out;

  ret = regmap_write(reg, SC_PERIPH_CTRL8, EYE_PATTERN_PARA);
  if (ret)
   goto out;
 } else {
  val = CTRL4_PICO_SIDDQ;
  mask = val;
  ret = regmap_update_bits(reg, SC_PERIPH_CTRL4, mask, val);
  if (ret)
   goto out;
 }

 return 0;
out:
 dev_err(priv->dev, "failed to setup phy ret: %d\n", ret);
 return ret;
}
