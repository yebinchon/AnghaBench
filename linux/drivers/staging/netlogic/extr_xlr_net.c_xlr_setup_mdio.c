
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xlr_net_priv {int port_id; int phy_addr; TYPE_1__* mii_bus; int base_addr; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {char* name; int phy_mask; int id; int * parent; int write; int read; struct xlr_net_priv* priv; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int R_MII_MGMT_CONFIG ;
 TYPE_1__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_register (TYPE_1__*) ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;
 int snprintf (int ,int ,char*,char*,int) ;
 int xlr_mii_probe (struct xlr_net_priv*) ;
 int xlr_mii_read ;
 int xlr_mii_write ;
 int xlr_nae_wreg (int ,int ,int) ;

__attribute__((used)) static int xlr_setup_mdio(struct xlr_net_priv *priv,
     struct platform_device *pdev)
{
 int err;

 priv->mii_bus = mdiobus_alloc();
 if (!priv->mii_bus) {
  pr_err("mdiobus alloc failed\n");
  return -ENOMEM;
 }

 priv->mii_bus->priv = priv;
 priv->mii_bus->name = "xlr-mdio";
 snprintf(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%d",
   priv->mii_bus->name, priv->port_id);
 priv->mii_bus->read = xlr_mii_read;
 priv->mii_bus->write = xlr_mii_write;
 priv->mii_bus->parent = &pdev->dev;


 priv->mii_bus->phy_mask = ~(1 << priv->phy_addr);


 xlr_nae_wreg(priv->base_addr, R_MII_MGMT_CONFIG, 0x7);

 err = mdiobus_register(priv->mii_bus);
 if (err) {
  mdiobus_free(priv->mii_bus);
  pr_err("mdio bus registration failed\n");
  return err;
 }

 pr_info("Registered mdio bus id : %s\n", priv->mii_bus->id);
 err = xlr_mii_probe(priv);
 if (err) {
  mdiobus_free(priv->mii_bus);
  return err;
 }
 return 0;
}
