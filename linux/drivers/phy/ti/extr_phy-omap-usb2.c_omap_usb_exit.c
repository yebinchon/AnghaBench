
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct omap_usb {int dummy; } ;


 int omap_usb2_disable_clocks (struct omap_usb*) ;
 struct omap_usb* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int omap_usb_exit(struct phy *x)
{
 struct omap_usb *phy = phy_get_drvdata(x);

 return omap_usb2_disable_clocks(phy);
}
