
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_port {int dummy; } ;
struct tegra_xusb_lane {int dummy; } ;


 int tegra210_usb3_map ;
 struct tegra_xusb_lane* tegra_xusb_port_find_lane (struct tegra_xusb_port*,int ,char*) ;

__attribute__((used)) static struct tegra_xusb_lane *
tegra210_usb3_port_map(struct tegra_xusb_port *port)
{
 return tegra_xusb_port_find_lane(port, tegra210_usb3_map, "usb3-ss");
}
