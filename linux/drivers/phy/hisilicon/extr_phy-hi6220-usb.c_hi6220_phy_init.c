
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct hi6220_priv {struct regmap* reg; } ;


 int RST0_POR_PICOPHY ;
 int RST0_USBOTG ;
 int RST0_USBOTG_32K ;
 int RST0_USBOTG_BUS ;
 int SC_PERIPH_RSTDIS0 ;
 int SC_PERIPH_RSTEN0 ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static void hi6220_phy_init(struct hi6220_priv *priv)
{
 struct regmap *reg = priv->reg;
 u32 val, mask;

 val = RST0_USBOTG_BUS | RST0_POR_PICOPHY |
       RST0_USBOTG | RST0_USBOTG_32K;
 mask = val;
 regmap_update_bits(reg, SC_PERIPH_RSTEN0, mask, val);
 regmap_update_bits(reg, SC_PERIPH_RSTDIS0, mask, val);
}
