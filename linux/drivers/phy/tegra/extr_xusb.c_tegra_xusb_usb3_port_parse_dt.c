
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct tegra_xusb_port {TYPE_1__ dev; } ;
struct tegra_xusb_usb3_port {int supply; int internal; int port; struct tegra_xusb_port base; } ;
struct device_node {int dummy; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int devm_regulator_get (TYPE_1__*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int tegra_xusb_usb3_port_parse_dt(struct tegra_xusb_usb3_port *usb3)
{
 struct tegra_xusb_port *port = &usb3->base;
 struct device_node *np = port->dev.of_node;
 u32 value;
 int err;

 err = of_property_read_u32(np, "nvidia,usb2-companion", &value);
 if (err < 0) {
  dev_err(&port->dev, "failed to read port: %d\n", err);
  return err;
 }

 usb3->port = value;

 usb3->internal = of_property_read_bool(np, "nvidia,internal");

 usb3->supply = devm_regulator_get(&port->dev, "vbus");
 return PTR_ERR_OR_ZERO(usb3->supply);
}
