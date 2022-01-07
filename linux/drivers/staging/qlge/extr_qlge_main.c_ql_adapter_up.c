
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int port_init; int port_link_up; int ndev; int flags; } ;


 int QL_ADAPTER_UP ;
 int QL_ALLMULTI ;
 int QL_PROMISCUOUS ;
 int STS ;
 int clear_bit (int ,int *) ;
 int ifup ;
 int netif_info (struct ql_adapter*,int ,int ,char*) ;
 int netif_tx_start_all_queues (int ) ;
 int ql_adapter_initialize (struct ql_adapter*) ;
 int ql_adapter_reset (struct ql_adapter*) ;
 int ql_alloc_rx_buffers (struct ql_adapter*) ;
 int ql_enable_all_completion_interrupts (struct ql_adapter*) ;
 int ql_enable_interrupts (struct ql_adapter*) ;
 int ql_link_on (struct ql_adapter*) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int qlge_restore_vlan (struct ql_adapter*) ;
 int qlge_set_multicast_list (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ql_adapter_up(struct ql_adapter *qdev)
{
 int err = 0;

 err = ql_adapter_initialize(qdev);
 if (err) {
  netif_info(qdev, ifup, qdev->ndev, "Unable to initialize adapter.\n");
  goto err_init;
 }
 set_bit(QL_ADAPTER_UP, &qdev->flags);
 ql_alloc_rx_buffers(qdev);



 if ((ql_read32(qdev, STS) & qdev->port_init) &&
   (ql_read32(qdev, STS) & qdev->port_link_up))
  ql_link_on(qdev);

 clear_bit(QL_ALLMULTI, &qdev->flags);
 clear_bit(QL_PROMISCUOUS, &qdev->flags);
 qlge_set_multicast_list(qdev->ndev);


 qlge_restore_vlan(qdev);

 ql_enable_interrupts(qdev);
 ql_enable_all_completion_interrupts(qdev);
 netif_tx_start_all_queues(qdev->ndev);

 return 0;
err_init:
 ql_adapter_reset(qdev);
 return err;
}
