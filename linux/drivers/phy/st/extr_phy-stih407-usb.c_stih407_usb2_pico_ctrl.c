
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih407_usb2_picophy {int ctrl; int regmap; int rstc; } ;


 int STIH407_USB_PICOPHY_CTRL_PORT_CONF ;
 int STIH407_USB_PICOPHY_CTRL_PORT_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int stih407_usb2_pico_ctrl(struct stih407_usb2_picophy *phy_dev)
{
 reset_control_deassert(phy_dev->rstc);

 return regmap_update_bits(phy_dev->regmap, phy_dev->ctrl,
      STIH407_USB_PICOPHY_CTRL_PORT_MASK,
      STIH407_USB_PICOPHY_CTRL_PORT_CONF);
}
