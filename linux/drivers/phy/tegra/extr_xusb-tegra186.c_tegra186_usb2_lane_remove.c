
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_usb2_lane {int dummy; } ;
struct tegra_xusb_lane {int dummy; } ;


 int kfree (struct tegra_xusb_usb2_lane*) ;
 struct tegra_xusb_usb2_lane* to_usb2_lane (struct tegra_xusb_lane*) ;

__attribute__((used)) static void tegra186_usb2_lane_remove(struct tegra_xusb_lane *lane)
{
 struct tegra_xusb_usb2_lane *usb2 = to_usb2_lane(lane);

 kfree(usb2);
}
