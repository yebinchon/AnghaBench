
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy_data {int dr_mode; int id_det; int force_session_end; int detect; } ;
struct sun4i_usb_phy {scalar_t__ index; } ;
struct phy {int dev; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int EINVAL ;



 int USB_DR_MODE_HOST ;
 int USB_DR_MODE_OTG ;
 int USB_DR_MODE_PERIPHERAL ;
 int dev_info (int *,char*,int) ;
 struct sun4i_usb_phy* phy_get_drvdata (struct phy*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_wq ;
 struct sun4i_usb_phy_data* to_sun4i_usb_phy_data (struct sun4i_usb_phy*) ;

__attribute__((used)) static int sun4i_usb_phy_set_mode(struct phy *_phy,
      enum phy_mode mode, int submode)
{
 struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);
 struct sun4i_usb_phy_data *data = to_sun4i_usb_phy_data(phy);
 int new_mode;

 if (phy->index != 0) {
  if (mode == 129)
   return 0;
  return -EINVAL;
 }

 switch (mode) {
 case 129:
  new_mode = USB_DR_MODE_HOST;
  break;
 case 130:
  new_mode = USB_DR_MODE_PERIPHERAL;
  break;
 case 128:
  new_mode = USB_DR_MODE_OTG;
  break;
 default:
  return -EINVAL;
 }

 if (new_mode != data->dr_mode) {
  dev_info(&_phy->dev, "Changing dr_mode to %d\n", new_mode);
  data->dr_mode = new_mode;
 }

 data->id_det = -1;
 data->force_session_end = 1;
 queue_delayed_work(system_wq, &data->detect, 0);

 return 0;
}
