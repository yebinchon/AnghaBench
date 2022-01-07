
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih407_usb2_picophy {int rstport; int param; int regmap; } ;
struct phy {int dummy; } ;


 int STIH407_USB_PICOPHY_PARAM_DEF ;
 int STIH407_USB_PICOPHY_PARAM_MASK ;
 struct stih407_usb2_picophy* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_deassert (int ) ;
 int stih407_usb2_pico_ctrl (struct stih407_usb2_picophy*) ;

__attribute__((used)) static int stih407_usb2_init_port(struct phy *phy)
{
 int ret;
 struct stih407_usb2_picophy *phy_dev = phy_get_drvdata(phy);

 stih407_usb2_pico_ctrl(phy_dev);

 ret = regmap_update_bits(phy_dev->regmap,
     phy_dev->param,
     STIH407_USB_PICOPHY_PARAM_MASK,
     STIH407_USB_PICOPHY_PARAM_DEF);
 if (ret)
  return ret;

 return reset_control_deassert(phy_dev->rstport);
}
