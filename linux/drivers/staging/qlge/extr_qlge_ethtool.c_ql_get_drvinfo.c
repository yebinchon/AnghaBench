
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int fw_rev_id; int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 struct ql_adapter* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int qlge_driver_name ;
 int qlge_driver_version ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ql_get_drvinfo(struct net_device *ndev,
      struct ethtool_drvinfo *drvinfo)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 strlcpy(drvinfo->driver, qlge_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, qlge_driver_version,
  sizeof(drvinfo->version));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "v%d.%d.%d",
   (qdev->fw_rev_id & 0x00ff0000) >> 16,
   (qdev->fw_rev_id & 0x0000ff00) >> 8,
   (qdev->fw_rev_id & 0x000000ff));
 strlcpy(drvinfo->bus_info, pci_name(qdev->pdev),
  sizeof(drvinfo->bus_info));
}
