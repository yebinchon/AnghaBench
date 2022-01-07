
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mt7621_pcie_port {int slot; int list; struct mt7621_pcie* pcie; int phy; int pcie_rst; int base; } ;
struct mt7621_pcie {int ports; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int name ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct mt7621_pcie_port* devm_kzalloc (struct device*,int,int ) ;
 int devm_phy_get (struct device*,char*) ;
 int devm_reset_control_get_exclusive (struct device*,char*) ;
 int list_add_tail (int *,int *) ;
 int of_address_to_resource (struct device_node*,int,struct resource*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
      struct device_node *node,
      int slot)
{
 struct mt7621_pcie_port *port;
 struct device *dev = pcie->dev;
 struct device_node *pnode = dev->of_node;
 struct resource regs;
 char name[10];
 int err;

 port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 err = of_address_to_resource(pnode, slot + 1, &regs);
 if (err) {
  dev_err(dev, "missing \"reg\" property\n");
  return err;
 }

 port->base = devm_ioremap_resource(dev, &regs);
 if (IS_ERR(port->base))
  return PTR_ERR(port->base);

 snprintf(name, sizeof(name), "pcie%d", slot);
 port->pcie_rst = devm_reset_control_get_exclusive(dev, name);
 if (PTR_ERR(port->pcie_rst) == -EPROBE_DEFER) {
  dev_err(dev, "failed to get pcie%d reset control\n", slot);
  return PTR_ERR(port->pcie_rst);
 }

 snprintf(name, sizeof(name), "pcie-phy%d", slot);
 port->phy = devm_phy_get(dev, name);
 if (IS_ERR(port->phy))
  return PTR_ERR(port->phy);

 port->slot = slot;
 port->pcie = pcie;

 INIT_LIST_HEAD(&port->list);
 list_add_tail(&port->list, &pcie->ports);

 return 0;
}
