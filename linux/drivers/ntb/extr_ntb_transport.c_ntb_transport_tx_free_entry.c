
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_transport_qp {unsigned int tx_index; unsigned int tx_max_entry; TYPE_1__* remote_rx_info; } ;
struct TYPE_2__ {unsigned int entry; } ;



unsigned int ntb_transport_tx_free_entry(struct ntb_transport_qp *qp)
{
 unsigned int head = qp->tx_index;
 unsigned int tail = qp->remote_rx_info->entry;

 return tail > head ? tail - head : qp->tx_max_entry + tail - head;
}
