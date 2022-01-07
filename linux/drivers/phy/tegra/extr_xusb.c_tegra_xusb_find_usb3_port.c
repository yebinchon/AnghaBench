
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_usb3_port {int dummy; } ;
struct tegra_xusb_port {int dummy; } ;
struct tegra_xusb_padctl {int dummy; } ;


 struct tegra_xusb_port* tegra_xusb_find_port (struct tegra_xusb_padctl*,char*,unsigned int) ;
 struct tegra_xusb_usb3_port* to_usb3_port (struct tegra_xusb_port*) ;

struct tegra_xusb_usb3_port *
tegra_xusb_find_usb3_port(struct tegra_xusb_padctl *padctl, unsigned int index)
{
 struct tegra_xusb_port *port;

 port = tegra_xusb_find_port(padctl, "usb3", index);
 if (port)
  return to_usb3_port(port);

 return ((void*)0);
}
