
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ql_adapter {int rss_ring_count; int flags; TYPE_1__* rx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int napi; } ;


 int QL_ADAPTER_UP ;
 int clear_bit (int ,int *) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_napi_del (int *) ;
 int netif_stop_queue (struct net_device*) ;
 int ql_cancel_all_work_sync (struct ql_adapter*) ;
 int ql_free_rx_buffers (struct ql_adapter*) ;
 int ql_release_adapter_resources (struct ql_adapter*) ;
 int ql_tx_ring_clean (struct ql_adapter*) ;

__attribute__((used)) static void ql_eeh_close(struct net_device *ndev)
{
 int i;
 struct ql_adapter *qdev = netdev_priv(ndev);

 if (netif_carrier_ok(ndev)) {
  netif_carrier_off(ndev);
  netif_stop_queue(ndev);
 }


 ql_cancel_all_work_sync(qdev);

 for (i = 0; i < qdev->rss_ring_count; i++)
  netif_napi_del(&qdev->rx_ring[i].napi);

 clear_bit(QL_ADAPTER_UP, &qdev->flags);
 ql_tx_ring_clean(qdev);
 ql_free_rx_buffers(qdev);
 ql_release_adapter_resources(qdev);
}
