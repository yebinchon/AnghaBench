
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int ndev; int mii_bus; } ;
struct platform_device {int dummy; } ;


 int free_netdev (int ) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct xlr_net_priv* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int xlr_net_remove(struct platform_device *pdev)
{
 struct xlr_net_priv *priv = platform_get_drvdata(pdev);

 unregister_netdev(priv->ndev);
 mdiobus_unregister(priv->mii_bus);
 mdiobus_free(priv->mii_bus);
 free_netdev(priv->ndev);
 return 0;
}
