
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u3phy_banks {scalar_t__ phya; scalar_t__ phyd; scalar_t__ chip; scalar_t__ spllc; } ;
struct u2phy_banks {scalar_t__ com; scalar_t__ fmreg; scalar_t__ misc; } ;
struct mtk_tphy {int dev; } ;
struct mtk_phy_instance {int type; scalar_t__ port_base; struct u3phy_banks u3_banks; struct u2phy_banks u2_banks; } ;





 scalar_t__ SSUSB_SIFSLV_V2_CHIP ;
 scalar_t__ SSUSB_SIFSLV_V2_MISC ;
 scalar_t__ SSUSB_SIFSLV_V2_SPLLC ;
 scalar_t__ SSUSB_SIFSLV_V2_U2FREQ ;
 scalar_t__ SSUSB_SIFSLV_V2_U2PHY_COM ;
 scalar_t__ SSUSB_SIFSLV_V2_U3PHYA ;
 scalar_t__ SSUSB_SIFSLV_V2_U3PHYD ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void phy_v2_banks_init(struct mtk_tphy *tphy,
         struct mtk_phy_instance *instance)
{
 struct u2phy_banks *u2_banks = &instance->u2_banks;
 struct u3phy_banks *u3_banks = &instance->u3_banks;

 switch (instance->type) {
 case 129:
  u2_banks->misc = instance->port_base + SSUSB_SIFSLV_V2_MISC;
  u2_banks->fmreg = instance->port_base + SSUSB_SIFSLV_V2_U2FREQ;
  u2_banks->com = instance->port_base + SSUSB_SIFSLV_V2_U2PHY_COM;
  break;
 case 128:
 case 130:
  u3_banks->spllc = instance->port_base + SSUSB_SIFSLV_V2_SPLLC;
  u3_banks->chip = instance->port_base + SSUSB_SIFSLV_V2_CHIP;
  u3_banks->phyd = instance->port_base + SSUSB_SIFSLV_V2_U3PHYD;
  u3_banks->phya = instance->port_base + SSUSB_SIFSLV_V2_U3PHYA;
  break;
 default:
  dev_err(tphy->dev, "incompatible PHY type\n");
  return;
 }
}
