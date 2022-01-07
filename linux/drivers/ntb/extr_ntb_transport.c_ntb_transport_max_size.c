
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_transport_qp {int tx_max_frame; struct dma_chan* tx_dma_chan; struct dma_chan* rx_dma_chan; } ;
struct ntb_payload_header {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int copy_align; } ;


 unsigned int max (int ,int ) ;
 unsigned int round_down (unsigned int,int) ;

unsigned int ntb_transport_max_size(struct ntb_transport_qp *qp)
{
 unsigned int max_size;
 unsigned int copy_align;
 struct dma_chan *rx_chan, *tx_chan;

 if (!qp)
  return 0;

 rx_chan = qp->rx_dma_chan;
 tx_chan = qp->tx_dma_chan;

 copy_align = max(rx_chan ? rx_chan->device->copy_align : 0,
    tx_chan ? tx_chan->device->copy_align : 0);


 max_size = qp->tx_max_frame - sizeof(struct ntb_payload_header);
 max_size = round_down(max_size, 1 << copy_align);

 return max_size;
}
