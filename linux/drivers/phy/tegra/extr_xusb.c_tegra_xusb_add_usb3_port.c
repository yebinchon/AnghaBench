
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int list; int lane; TYPE_4__* ops; } ;
struct tegra_xusb_usb3_port {TYPE_5__ base; } ;
struct tegra_xusb_padctl {int ports; TYPE_3__* soc; int dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {int (* map ) (TYPE_5__*) ;} ;
struct TYPE_8__ {TYPE_4__* ops; } ;
struct TYPE_9__ {TYPE_1__ usb3; } ;
struct TYPE_10__ {TYPE_2__ ports; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct tegra_xusb_usb3_port* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 int of_device_is_available (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int stub1 (TYPE_5__*) ;
 struct device_node* tegra_xusb_find_port_node (struct tegra_xusb_padctl*,char*,unsigned int) ;
 int tegra_xusb_port_init (TYPE_5__*,struct tegra_xusb_padctl*,struct device_node*,char*,unsigned int) ;
 int tegra_xusb_port_unregister (TYPE_5__*) ;
 int tegra_xusb_usb3_port_parse_dt (struct tegra_xusb_usb3_port*) ;

__attribute__((used)) static int tegra_xusb_add_usb3_port(struct tegra_xusb_padctl *padctl,
        unsigned int index)
{
 struct tegra_xusb_usb3_port *usb3;
 struct device_node *np;
 int err = 0;






 np = tegra_xusb_find_port_node(padctl, "usb3", index);
 if (!np || !of_device_is_available(np))
  goto out;

 usb3 = devm_kzalloc(padctl->dev, sizeof(*usb3), GFP_KERNEL);
 if (!usb3) {
  err = -ENOMEM;
  goto out;
 }

 err = tegra_xusb_port_init(&usb3->base, padctl, np, "usb3", index);
 if (err < 0)
  goto out;

 usb3->base.ops = padctl->soc->ports.usb3.ops;

 usb3->base.lane = usb3->base.ops->map(&usb3->base);
 if (IS_ERR(usb3->base.lane)) {
  err = PTR_ERR(usb3->base.lane);
  goto out;
 }

 err = tegra_xusb_usb3_port_parse_dt(usb3);
 if (err < 0) {
  tegra_xusb_port_unregister(&usb3->base);
  goto out;
 }

 list_add_tail(&usb3->base.list, &padctl->ports);

out:
 of_node_put(np);
 return err;
}
