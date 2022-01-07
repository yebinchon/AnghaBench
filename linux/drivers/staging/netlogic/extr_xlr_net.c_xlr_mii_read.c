
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlr_net_priv {TYPE_1__* ndev; int mii_addr; } ;
struct mii_bus {struct xlr_net_priv* priv; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int,int,int) ;
 int xlr_phy_read (int ,int,int) ;

__attribute__((used)) static int xlr_mii_read(struct mii_bus *bus, int phy_addr, int regnum)
{
 struct xlr_net_priv *priv = bus->priv;
 int ret;

 ret = xlr_phy_read(priv->mii_addr, phy_addr, regnum);
 dev_dbg(&priv->ndev->dev, "mii_read phy %d : %d [%x]\n",
  phy_addr, regnum, ret);
 return ret;
}
