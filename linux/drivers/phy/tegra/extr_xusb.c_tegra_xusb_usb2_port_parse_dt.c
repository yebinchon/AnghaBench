
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct tegra_xusb_port {TYPE_1__ dev; } ;
struct tegra_xusb_usb2_port {int mode; int supply; int internal; struct tegra_xusb_port base; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int USB_DR_MODE_HOST ;
 int USB_DR_MODE_UNKNOWN ;
 int dev_err (TYPE_1__*,char*,char const*) ;
 int devm_regulator_get (TYPE_1__*,char*) ;
 int match_string (int ,int ,char const*) ;
 int modes ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;

__attribute__((used)) static int tegra_xusb_usb2_port_parse_dt(struct tegra_xusb_usb2_port *usb2)
{
 struct tegra_xusb_port *port = &usb2->base;
 struct device_node *np = port->dev.of_node;
 const char *mode;

 usb2->internal = of_property_read_bool(np, "nvidia,internal");

 if (!of_property_read_string(np, "mode", &mode)) {
  int err = match_string(modes, ARRAY_SIZE(modes), mode);
  if (err < 0) {
   dev_err(&port->dev, "invalid value %s for \"mode\"\n",
    mode);
   usb2->mode = USB_DR_MODE_UNKNOWN;
  } else {
   usb2->mode = err;
  }
 } else {
  usb2->mode = USB_DR_MODE_HOST;
 }

 usb2->supply = devm_regulator_get(&port->dev, "vbus");
 return PTR_ERR_OR_ZERO(usb2->supply);
}
