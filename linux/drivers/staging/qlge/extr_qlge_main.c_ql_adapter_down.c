
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ql_adapter {int rss_ring_count; int func; int ndev; TYPE_1__* rx_ring; int flags; } ;
struct TYPE_2__ {int napi; } ;


 int QL_ADAPTER_UP ;
 int clear_bit (int ,int *) ;
 int ifdown ;
 int napi_disable (int *) ;
 int netif_err (struct ql_adapter*,int ,int ,char*,int ) ;
 int netif_napi_del (int *) ;
 int ql_adapter_reset (struct ql_adapter*) ;
 int ql_cancel_all_work_sync (struct ql_adapter*) ;
 int ql_disable_interrupts (struct ql_adapter*) ;
 int ql_free_rx_buffers (struct ql_adapter*) ;
 int ql_link_off (struct ql_adapter*) ;
 int ql_tx_ring_clean (struct ql_adapter*) ;

__attribute__((used)) static int ql_adapter_down(struct ql_adapter *qdev)
{
 int i, status = 0;

 ql_link_off(qdev);

 ql_cancel_all_work_sync(qdev);

 for (i = 0; i < qdev->rss_ring_count; i++)
  napi_disable(&qdev->rx_ring[i].napi);

 clear_bit(QL_ADAPTER_UP, &qdev->flags);

 ql_disable_interrupts(qdev);

 ql_tx_ring_clean(qdev);



 for (i = 0; i < qdev->rss_ring_count; i++)
  netif_napi_del(&qdev->rx_ring[i].napi);

 status = ql_adapter_reset(qdev);
 if (status)
  netif_err(qdev, ifdown, qdev->ndev, "reset(func #%d) FAILED!\n",
     qdev->func);
 ql_free_rx_buffers(qdev);

 return status;
}
