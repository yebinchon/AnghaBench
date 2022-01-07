
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy_data {int detect; } ;
struct sun4i_usb_phy {int regulator_on; scalar_t__ index; int vbus; } ;
struct phy {int dummy; } ;


 int POLL_TIME ;
 int mod_delayed_work (int ,int *,int ) ;
 struct sun4i_usb_phy* phy_get_drvdata (struct phy*) ;
 int regulator_disable (int ) ;
 int sun4i_usb_phy0_poll (struct sun4i_usb_phy_data*) ;
 int system_wq ;
 struct sun4i_usb_phy_data* to_sun4i_usb_phy_data (struct sun4i_usb_phy*) ;

__attribute__((used)) static int sun4i_usb_phy_power_off(struct phy *_phy)
{
 struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);
 struct sun4i_usb_phy_data *data = to_sun4i_usb_phy_data(phy);

 if (!phy->vbus || !phy->regulator_on)
  return 0;

 regulator_disable(phy->vbus);
 phy->regulator_on = 0;





 if (phy->index == 0 && !sun4i_usb_phy0_poll(data))
  mod_delayed_work(system_wq, &data->detect, POLL_TIME);

 return 0;
}
