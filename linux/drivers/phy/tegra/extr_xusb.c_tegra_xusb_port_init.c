
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; int of_node; int * type; } ;
struct tegra_xusb_port {unsigned int index; TYPE_1__ dev; struct tegra_xusb_padctl* padctl; int list; } ;
struct tegra_xusb_padctl {int dev; } ;
struct device_node {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_1__*,char*,char const*,unsigned int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int of_node_get (struct device_node*) ;
 int tegra_xusb_port_type ;

__attribute__((used)) static int tegra_xusb_port_init(struct tegra_xusb_port *port,
    struct tegra_xusb_padctl *padctl,
    struct device_node *np,
    const char *name,
    unsigned int index)
{
 int err;

 INIT_LIST_HEAD(&port->list);
 port->padctl = padctl;
 port->index = index;

 device_initialize(&port->dev);
 port->dev.type = &tegra_xusb_port_type;
 port->dev.of_node = of_node_get(np);
 port->dev.parent = padctl->dev;

 err = dev_set_name(&port->dev, "%s-%u", name, index);
 if (err < 0)
  goto unregister;

 err = device_add(&port->dev);
 if (err < 0)
  goto unregister;

 return 0;

unregister:
 device_unregister(&port->dev);
 return err;
}
