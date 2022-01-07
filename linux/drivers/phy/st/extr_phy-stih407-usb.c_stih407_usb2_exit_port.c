
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih407_usb2_picophy {int rstport; } ;
struct phy {int dummy; } ;


 struct stih407_usb2_picophy* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int stih407_usb2_exit_port(struct phy *phy)
{
 struct stih407_usb2_picophy *phy_dev = phy_get_drvdata(phy);
 return reset_control_assert(phy_dev->rstport);
}
