
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct bcm_kona_usb {int dummy; } ;


 int bcm_kona_usb_phy_power (struct bcm_kona_usb*,int ) ;
 struct bcm_kona_usb* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int bcm_kona_usb_phy_power_off(struct phy *gphy)
{
 struct bcm_kona_usb *phy = phy_get_drvdata(gphy);

 bcm_kona_usb_phy_power(phy, 0);

 return 0;
}
