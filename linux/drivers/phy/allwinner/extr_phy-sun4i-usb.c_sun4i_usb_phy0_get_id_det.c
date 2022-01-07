
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy_data {int dr_mode; int id_det_gpio; } ;





 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int sun4i_usb_phy0_get_id_det(struct sun4i_usb_phy_data *data)
{
 switch (data->dr_mode) {
 case 129:
  if (data->id_det_gpio)
   return gpiod_get_value_cansleep(data->id_det_gpio);
  else
   return 1;
 case 130:
  return 0;
 case 128:
 default:
  return 1;
 }
}
