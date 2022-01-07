
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int pci_name (int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void _rtl92e_ethtool_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(priv->pdev), sizeof(info->bus_info));
}
