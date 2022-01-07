
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ethernet {scalar_t__ imode; scalar_t__ port; int (* poll ) (struct net_device*) ;} ;
struct net_device {scalar_t__ phydev; } ;


 scalar_t__ CVMX_HELPER_INTERFACE_MODE_GMII ;
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_RGMII ;
 int cvm_oct_check_preamble_errors (struct net_device*) ;
 int cvm_oct_common_open (struct net_device*,int ) ;
 int cvm_oct_rgmii_poll ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;

int cvm_oct_rgmii_open(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 int ret;

 ret = cvm_oct_common_open(dev, cvm_oct_rgmii_poll);
 if (ret)
  return ret;

 if (dev->phydev) {
  if ((priv->imode == CVMX_HELPER_INTERFACE_MODE_GMII &&
       priv->port == 0) ||
      (priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII)) {
   priv->poll = cvm_oct_check_preamble_errors;
   cvm_oct_check_preamble_errors(dev);
  }
 }

 return 0;
}
