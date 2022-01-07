
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct mdio_device {int dev; int addr; int bus; } ;


 int BLK_ADDR_REG_OFFSET ;
 int PLL_AFE1_100MHZ_BLK ;
 int PLL_CLK_AMP_2P05V ;
 int PLL_CLK_AMP_OFFSET ;
 int dev_err (int *,char*,int) ;
 int mdiobus_write (int ,int ,int ,int ) ;
 struct mdio_device* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int ns2_pci_phy_init(struct phy *p)
{
 struct mdio_device *mdiodev = phy_get_drvdata(p);
 int rc;


 rc = mdiobus_write(mdiodev->bus, mdiodev->addr,
      BLK_ADDR_REG_OFFSET, PLL_AFE1_100MHZ_BLK);
 if (rc)
  goto err;


 rc = mdiobus_write(mdiodev->bus, mdiodev->addr,
      PLL_CLK_AMP_OFFSET, PLL_CLK_AMP_2P05V);
 if (rc)
  goto err;

 return 0;

err:
 dev_err(&mdiodev->dev, "Error %d writing to phy\n", rc);
 return rc;
}
