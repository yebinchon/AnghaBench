
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ql_adapter {int ndev; int flags; } ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;


 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int QLGE_TEST_LEN ;
 int QL_SELFTEST ;
 int clear_bit (int ,int *) ;
 int drv ;
 int memset (int *,int ,int) ;
 int msleep_interruptible (int) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ ql_loopback_test (struct ql_adapter*,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ql_self_test(struct net_device *ndev,
    struct ethtool_test *eth_test, u64 *data)
{
 struct ql_adapter *qdev = netdev_priv(ndev);

 memset(data, 0, sizeof(u64) * QLGE_TEST_LEN);

 if (netif_running(ndev)) {
  set_bit(QL_SELFTEST, &qdev->flags);
  if (eth_test->flags == ETH_TEST_FL_OFFLINE) {

   if (ql_loopback_test(qdev, &data[0]))
    eth_test->flags |= ETH_TEST_FL_FAILED;

  } else {

   data[0] = 0;
  }
  clear_bit(QL_SELFTEST, &qdev->flags);



  msleep_interruptible(4 * 1000);
 } else {
  netif_err(qdev, drv, qdev->ndev,
     "is down, Loopback test will fail.\n");
  eth_test->flags |= ETH_TEST_FL_FAILED;
 }
}
