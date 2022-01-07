
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inno_hdmi_phy {int phy; } ;


 int phy_get_bus_width (int ) ;

__attribute__((used)) static unsigned long inno_hdmi_phy_get_tmdsclk(struct inno_hdmi_phy *inno,
            unsigned long rate)
{
 int bus_width = phy_get_bus_width(inno->phy);

 switch (bus_width) {
 case 4:
 case 5:
 case 6:
 case 10:
 case 12:
 case 16:
  return (u64)rate * bus_width / 8;
 default:
  return rate;
 }
}
