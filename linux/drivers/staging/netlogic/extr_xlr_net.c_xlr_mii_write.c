
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct xlr_net_priv {TYPE_1__* ndev; int mii_addr; } ;
struct mii_bus {struct xlr_net_priv* priv; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int,int,int ,int) ;
 int xlr_phy_write (int ,int,int,int ) ;

__attribute__((used)) static int xlr_mii_write(struct mii_bus *bus, int phy_addr, int regnum, u16 val)
{
 struct xlr_net_priv *priv = bus->priv;
 int ret;

 ret = xlr_phy_write(priv->mii_addr, phy_addr, regnum, val);
 dev_dbg(&priv->ndev->dev, "mii_write phy %d : %d <- %x [%x]\n",
  phy_addr, regnum, val, ret);
 return ret;
}
