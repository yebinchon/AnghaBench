
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy_data {int detect; scalar_t__ vbus_det; } ;
struct sun4i_usb_phy {int regulator_on; scalar_t__ index; int vbus; } ;
struct phy {int dev; } ;


 int DEBOUNCE_TIME ;
 int dev_warn (int *,char*) ;
 int mod_delayed_work (int ,int *,int ) ;
 struct sun4i_usb_phy* phy_get_drvdata (struct phy*) ;
 int regulator_enable (int ) ;
 scalar_t__ sun4i_usb_phy0_have_vbus_det (struct sun4i_usb_phy_data*) ;
 scalar_t__ sun4i_usb_phy0_poll (struct sun4i_usb_phy_data*) ;
 int system_wq ;
 struct sun4i_usb_phy_data* to_sun4i_usb_phy_data (struct sun4i_usb_phy*) ;

__attribute__((used)) static int sun4i_usb_phy_power_on(struct phy *_phy)
{
 struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);
 struct sun4i_usb_phy_data *data = to_sun4i_usb_phy_data(phy);
 int ret;

 if (!phy->vbus || phy->regulator_on)
  return 0;


 if (phy->index == 0 && sun4i_usb_phy0_have_vbus_det(data) &&
    data->vbus_det) {
  dev_warn(&_phy->dev, "External vbus detected, not enabling our own vbus\n");
  return 0;
 }

 ret = regulator_enable(phy->vbus);
 if (ret)
  return ret;

 phy->regulator_on = 1;


 if (phy->index == 0 && sun4i_usb_phy0_poll(data))
  mod_delayed_work(system_wq, &data->detect, DEBOUNCE_TIME);

 return 0;
}
