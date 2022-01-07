
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlr_net_priv {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;


 struct xlr_net_priv* netdev_priv (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int phy_start (struct phy_device*) ;
 int phy_start_aneg (struct phy_device*) ;
 int pr_err (char*) ;
 struct phy_device* xlr_get_phydev (struct xlr_net_priv*) ;
 int xlr_set_gmac_speed (struct xlr_net_priv*) ;

__attribute__((used)) static int xlr_net_open(struct net_device *ndev)
{
 u32 err;
 struct xlr_net_priv *priv = netdev_priv(ndev);
 struct phy_device *phydev = xlr_get_phydev(priv);


 phy_start(phydev);

 err = phy_start_aneg(phydev);
 if (err) {
  pr_err("Autoneg failed\n");
  return err;
 }

 xlr_set_gmac_speed(priv);

 netif_tx_start_all_queues(ndev);

 return 0;
}
