
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int flags; int ndev; } ;
struct net_device {int dummy; } ;


 int QL_ADAPTER_UP ;
 int QL_EEH_FATAL ;
 int clear_bit (int ,int *) ;
 int drv ;
 int msleep (int) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_adapter_down (struct ql_adapter*) ;
 int ql_release_adapter_resources (struct ql_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qlge_close(struct net_device *ndev)
{
 struct ql_adapter *qdev = netdev_priv(ndev);





 if (test_bit(QL_EEH_FATAL, &qdev->flags)) {
  netif_err(qdev, drv, qdev->ndev, "EEH fatal did unload.\n");
  clear_bit(QL_EEH_FATAL, &qdev->flags);
  return 0;
 }





 while (!test_bit(QL_ADAPTER_UP, &qdev->flags))
  msleep(1);
 ql_adapter_down(qdev);
 ql_release_adapter_resources(qdev);
 return 0;
}
