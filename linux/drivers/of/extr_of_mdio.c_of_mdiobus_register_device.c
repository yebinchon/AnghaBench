
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mii_bus {int dev; } ;
struct TYPE_2__ {int fwnode; struct device_node* of_node; } ;
struct mdio_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (struct mdio_device*) ;
 int PTR_ERR (struct mdio_device*) ;
 int dev_dbg (int *,char*,struct device_node*,int ) ;
 struct mdio_device* mdio_device_create (struct mii_bus*,int ) ;
 int mdio_device_free (struct mdio_device*) ;
 int mdio_device_register (struct mdio_device*) ;
 int of_fwnode_handle (struct device_node*) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int of_mdiobus_register_device(struct mii_bus *mdio,
          struct device_node *child, u32 addr)
{
 struct mdio_device *mdiodev;
 int rc;

 mdiodev = mdio_device_create(mdio, addr);
 if (IS_ERR(mdiodev))
  return PTR_ERR(mdiodev);




 of_node_get(child);
 mdiodev->dev.of_node = child;
 mdiodev->dev.fwnode = of_fwnode_handle(child);


 rc = mdio_device_register(mdiodev);
 if (rc) {
  mdio_device_free(mdiodev);
  of_node_put(child);
  return rc;
 }

 dev_dbg(&mdio->dev, "registered mdio device %pOFn at address %i\n",
  child, addr);
 return 0;
}
