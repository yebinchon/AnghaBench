
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;
struct isp1301 {int dummy; } ;


 int ISP1301_I2C_OTG_CONTROL_1 ;
 int OTG1_VBUS_DRV ;
 int isp1301_clear (struct isp1301*,int ,int ) ;
 int isp1301_write (struct isp1301*,int ,int ) ;
 struct isp1301* phy_to_isp (struct usb_phy*) ;

__attribute__((used)) static int isp1301_phy_set_vbus(struct usb_phy *phy, int on)
{
 struct isp1301 *isp = phy_to_isp(phy);

 if (on)
  isp1301_write(isp, ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DRV);
 else
  isp1301_clear(isp, ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DRV);

 return 0;
}
