
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy_data {scalar_t__ vbus_power_supply; scalar_t__ vbus_det_gpio; } ;



__attribute__((used)) static bool sun4i_usb_phy0_have_vbus_det(struct sun4i_usb_phy_data *data)
{
 return data->vbus_det_gpio || data->vbus_power_supply;
}
