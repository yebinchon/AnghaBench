
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int fwnode; struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; int reset_deassert_delay; int reset_assert_delay; } ;
struct phy_device {int irq; TYPE_2__ mdio; } ;
struct mii_bus {int* irq; int phy_ignore_ta_mask; int dev; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int PTR_ERR (struct phy_device*) ;
 int dev_dbg (int *,char*,struct device_node*,size_t) ;
 struct phy_device* get_phy_device (struct mii_bus*,size_t,int) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 int of_fwnode_handle (struct device_node*) ;
 int of_get_phy_id (struct device_node*,size_t*) ;
 int of_irq_get (struct device_node*,int ) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 struct phy_device* phy_device_create (struct mii_bus*,size_t,size_t,int ,int *) ;
 int phy_device_free (struct phy_device*) ;
 int phy_device_register (struct phy_device*) ;

__attribute__((used)) static int of_mdiobus_register_phy(struct mii_bus *mdio,
        struct device_node *child, u32 addr)
{
 struct phy_device *phy;
 bool is_c45;
 int rc;
 u32 phy_id;

 is_c45 = of_device_is_compatible(child,
      "ethernet-phy-ieee802.3-c45");

 if (!is_c45 && !of_get_phy_id(child, &phy_id))
  phy = phy_device_create(mdio, addr, phy_id, 0, ((void*)0));
 else
  phy = get_phy_device(mdio, addr, is_c45);
 if (IS_ERR(phy))
  return PTR_ERR(phy);

 rc = of_irq_get(child, 0);
 if (rc == -EPROBE_DEFER) {
  phy_device_free(phy);
  return rc;
 }
 if (rc > 0) {
  phy->irq = rc;
  mdio->irq[addr] = rc;
 } else {
  phy->irq = mdio->irq[addr];
 }

 if (of_property_read_bool(child, "broken-turn-around"))
  mdio->phy_ignore_ta_mask |= 1 << addr;

 of_property_read_u32(child, "reset-assert-us",
        &phy->mdio.reset_assert_delay);
 of_property_read_u32(child, "reset-deassert-us",
        &phy->mdio.reset_deassert_delay);



 of_node_get(child);
 phy->mdio.dev.of_node = child;
 phy->mdio.dev.fwnode = of_fwnode_handle(child);



 rc = phy_device_register(phy);
 if (rc) {
  phy_device_free(phy);
  of_node_put(child);
  return rc;
 }

 dev_dbg(&mdio->dev, "registered phy %pOFn at address %i\n",
  child, addr);
 return 0;
}
