
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rx_ring {scalar_t__ cnsmr_idx; int prod_idx_sh_reg; struct ql_net_rsp_iocb* curr_entry; int cq_id; struct ql_adapter* qdev; } ;
struct ql_net_rsp_iocb {int opcode; } ;
struct ql_adapter {int ndev; } ;
struct ib_mac_iocb_rsp {int dummy; } ;
struct ib_ae_iocb_rsp {int dummy; } ;


 int KERN_DEBUG ;


 int netif_printk (struct ql_adapter*,int ,int ,int ,char*,int,...) ;
 int ql_process_chip_ae_intr (struct ql_adapter*,struct ib_ae_iocb_rsp*) ;
 int ql_process_mac_rx_intr (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*) ;
 scalar_t__ ql_read_sh_reg (int ) ;
 int ql_update_buffer_queues (struct ql_adapter*,struct rx_ring*) ;
 int ql_update_cq (struct rx_ring*) ;
 int ql_write_cq_idx (struct rx_ring*) ;
 int rmb () ;
 int rx_status ;

__attribute__((used)) static int ql_clean_inbound_rx_ring(struct rx_ring *rx_ring, int budget)
{
 struct ql_adapter *qdev = rx_ring->qdev;
 u32 prod = ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
 struct ql_net_rsp_iocb *net_rsp;
 int count = 0;


 while (prod != rx_ring->cnsmr_idx) {

  netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
        "cq_id = %d, prod = %d, cnsmr = %d\n",
        rx_ring->cq_id, prod, rx_ring->cnsmr_idx);

  net_rsp = rx_ring->curr_entry;
  rmb();
  switch (net_rsp->opcode) {
  case 128:
   ql_process_mac_rx_intr(qdev, rx_ring,
            (struct ib_mac_iocb_rsp *)
            net_rsp);
   break;

  case 129:
   ql_process_chip_ae_intr(qdev, (struct ib_ae_iocb_rsp *)
      net_rsp);
   break;
  default:
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "Hit default case, not handled! dropping the packet, opcode = %x.\n",
         net_rsp->opcode);
   break;
  }
  count++;
  ql_update_cq(rx_ring);
  prod = ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
  if (count == budget)
   break;
 }
 ql_update_buffer_queues(qdev, rx_ring);
 ql_write_cq_idx(rx_ring);
 return count;
}
