
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct sun4i_usb_phy_data {scalar_t__ vbus_power_supply; scalar_t__ vbus_det_gpio; } ;


 int POWER_SUPPLY_PROP_PRESENT ;
 int gpiod_get_value_cansleep (scalar_t__) ;
 int power_supply_get_property (scalar_t__,int ,union power_supply_propval*) ;

__attribute__((used)) static int sun4i_usb_phy0_get_vbus_det(struct sun4i_usb_phy_data *data)
{
 if (data->vbus_det_gpio)
  return gpiod_get_value_cansleep(data->vbus_det_gpio);

 if (data->vbus_power_supply) {
  union power_supply_propval val;
  int r;

  r = power_supply_get_property(data->vbus_power_supply,
           POWER_SUPPLY_PROP_PRESENT, &val);
  if (r == 0)
   return val.intval;
 }


 return 1;
}
