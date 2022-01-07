
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union extcon_property_value {scalar_t__ intval; } ;
typedef int u8 ;
struct rockchip_typec_phy {int flip; int dev; struct extcon_dev* extcon; } ;
struct extcon_dev {int dummy; } ;


 unsigned int EXTCON_DISP_DP ;
 int EXTCON_PROP_USB_SS ;
 int EXTCON_PROP_USB_TYPEC_POLARITY ;
 unsigned int EXTCON_USB ;
 unsigned int EXTCON_USB_HOST ;
 int MODE_DFP_DP ;
 int MODE_DFP_USB ;
 int MODE_UFP_USB ;
 int dev_err (int ,char*) ;
 int extcon_get_property (struct extcon_dev*,unsigned int,int ,union extcon_property_value*) ;
 int extcon_get_state (struct extcon_dev*,unsigned int) ;

__attribute__((used)) static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
{
 struct extcon_dev *edev = tcphy->extcon;
 union extcon_property_value property;
 unsigned int id;
 bool ufp, dp;
 u8 mode;
 int ret;

 if (!edev)
  return MODE_DFP_USB;

 ufp = extcon_get_state(edev, EXTCON_USB);
 dp = extcon_get_state(edev, EXTCON_DISP_DP);

 mode = MODE_DFP_USB;
 id = EXTCON_USB_HOST;

 if (ufp) {
  mode = MODE_UFP_USB;
  id = EXTCON_USB;
 } else if (dp) {
  mode = MODE_DFP_DP;
  id = EXTCON_DISP_DP;

  ret = extcon_get_property(edev, id, EXTCON_PROP_USB_SS,
       &property);
  if (ret) {
   dev_err(tcphy->dev, "get superspeed property failed\n");
   return ret;
  }

  if (property.intval)
   mode |= MODE_DFP_USB;
 }

 ret = extcon_get_property(edev, id, EXTCON_PROP_USB_TYPEC_POLARITY,
      &property);
 if (ret) {
  dev_err(tcphy->dev, "get polarity property failed\n");
  return ret;
 }

 tcphy->flip = property.intval ? 1 : 0;

 return mode;
}
