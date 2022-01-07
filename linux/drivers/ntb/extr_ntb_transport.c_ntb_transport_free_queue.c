
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dev; } ;
struct ntb_transport_qp {int active; int qp_num; TYPE_2__* transport; int tx_free_q; int ntb_tx_free_q_lock; int rx_post_q; int ntb_rx_q_lock; int rx_pend_q; int rx_free_q; int * event_handler; int * tx_handler; int * rx_handler; int * cb_data; int link_work; int rxc_db_work; TYPE_3__* ndev; int last_cookie; struct dma_chan* rx_dma_chan; int tx_mw_size; int tx_mw_dma_addr; struct dma_chan* tx_dma_chan; } ;
struct ntb_queue_entry {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_6__ {struct pci_dev* pdev; } ;
struct TYPE_5__ {int qp_bitmap_free; } ;
struct TYPE_4__ {int dev; } ;


 int BIT_ULL (int ) ;
 int DMA_FROM_DEVICE ;
 int cancel_delayed_work_sync (int *) ;
 int dev_info (int *,char*,int ) ;
 int dev_warn (int *,char*) ;
 int dma_release_channel (struct dma_chan*) ;
 int dma_sync_wait (struct dma_chan*,int ) ;
 int dma_unmap_resource (int ,int ,int ,int ,int ) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 int kfree (struct ntb_queue_entry*) ;
 int ntb_db_set_mask (TYPE_3__*,int ) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;
 int tasklet_kill (int *) ;

void ntb_transport_free_queue(struct ntb_transport_qp *qp)
{
 struct pci_dev *pdev;
 struct ntb_queue_entry *entry;
 u64 qp_bit;

 if (!qp)
  return;

 pdev = qp->ndev->pdev;

 qp->active = 0;

 if (qp->tx_dma_chan) {
  struct dma_chan *chan = qp->tx_dma_chan;



  qp->tx_dma_chan = ((void*)0);




  dma_sync_wait(chan, qp->last_cookie);
  dmaengine_terminate_all(chan);

  dma_unmap_resource(chan->device->dev,
       qp->tx_mw_dma_addr, qp->tx_mw_size,
       DMA_FROM_DEVICE, 0);

  dma_release_channel(chan);
 }

 if (qp->rx_dma_chan) {
  struct dma_chan *chan = qp->rx_dma_chan;



  qp->rx_dma_chan = ((void*)0);




  dma_sync_wait(chan, qp->last_cookie);
  dmaengine_terminate_all(chan);
  dma_release_channel(chan);
 }

 qp_bit = BIT_ULL(qp->qp_num);

 ntb_db_set_mask(qp->ndev, qp_bit);
 tasklet_kill(&qp->rxc_db_work);

 cancel_delayed_work_sync(&qp->link_work);

 qp->cb_data = ((void*)0);
 qp->rx_handler = ((void*)0);
 qp->tx_handler = ((void*)0);
 qp->event_handler = ((void*)0);

 while ((entry = ntb_list_rm(&qp->ntb_rx_q_lock, &qp->rx_free_q)))
  kfree(entry);

 while ((entry = ntb_list_rm(&qp->ntb_rx_q_lock, &qp->rx_pend_q))) {
  dev_warn(&pdev->dev, "Freeing item from non-empty rx_pend_q\n");
  kfree(entry);
 }

 while ((entry = ntb_list_rm(&qp->ntb_rx_q_lock, &qp->rx_post_q))) {
  dev_warn(&pdev->dev, "Freeing item from non-empty rx_post_q\n");
  kfree(entry);
 }

 while ((entry = ntb_list_rm(&qp->ntb_tx_free_q_lock, &qp->tx_free_q)))
  kfree(entry);

 qp->transport->qp_bitmap_free |= qp_bit;

 dev_info(&pdev->dev, "NTB Transport QP %d freed\n", qp->qp_num);
}
