
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_port {int index; int padctl; } ;
struct tegra_xusb_lane {int dummy; } ;


 struct tegra_xusb_lane* tegra_xusb_find_lane (int ,char*,int ) ;

__attribute__((used)) static struct tegra_xusb_lane *
tegra186_usb3_port_map(struct tegra_xusb_port *port)
{
 return tegra_xusb_find_lane(port->padctl, "usb3", port->index);
}
