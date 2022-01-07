
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dev; } ;
struct am335x_phy {int dr_mode; int id; int phy_ctrl; } ;


 struct am335x_phy* dev_get_drvdata (int ) ;
 int phy_ctrl_power (int ,int ,int ,int) ;

__attribute__((used)) static void am335x_shutdown(struct usb_phy *phy)
{
 struct am335x_phy *am_phy = dev_get_drvdata(phy->dev);

 phy_ctrl_power(am_phy->phy_ctrl, am_phy->id, am_phy->dr_mode, 0);
}
