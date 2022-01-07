
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int usb3_phy; } ;


 int phy_reset (int ) ;

__attribute__((used)) static void cdns3_idle_role_stop(struct cdns3 *cdns)
{

 phy_reset(cdns->usb3_phy);
}
