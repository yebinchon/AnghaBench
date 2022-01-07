
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnic_wq_buf {int len; int dma_addr; struct snic_host_req* os_buf; } ;
struct vnic_wq {int vdev; } ;
struct TYPE_5__ {int * next; } ;
struct snic_req_info {scalar_t__ sge_va; TYPE_2__ list; } ;
struct snic_host_req {int dummy; } ;
struct snic {int shost; int spl_cmd_lock; TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int SNIC_BUG_ON (int ) ;
 int SNIC_HOST_INFO (int ,char*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (void*) ;
 int list_del_init (TYPE_2__*) ;
 scalar_t__ list_empty (TYPE_2__*) ;
 struct snic_req_info* req_to_rqi (struct snic_host_req*) ;
 int snic_pci_unmap_rsp_buf (struct snic*,struct snic_req_info*) ;
 int snic_req_free (struct snic*,struct snic_req_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct snic* svnic_dev_priv (int ) ;

void
snic_free_wq_buf(struct vnic_wq *wq, struct vnic_wq_buf *buf)
{

 struct snic_host_req *req = buf->os_buf;
 struct snic *snic = svnic_dev_priv(wq->vdev);
 struct snic_req_info *rqi = ((void*)0);
 unsigned long flags;

 dma_unmap_single(&snic->pdev->dev, buf->dma_addr, buf->len,
    DMA_TO_DEVICE);

 rqi = req_to_rqi(req);
 spin_lock_irqsave(&snic->spl_cmd_lock, flags);
 if (list_empty(&rqi->list)) {
  spin_unlock_irqrestore(&snic->spl_cmd_lock, flags);
  goto end;
 }

 SNIC_BUG_ON(rqi->list.next == ((void*)0));
 list_del_init(&rqi->list);
 spin_unlock_irqrestore(&snic->spl_cmd_lock, flags);

 if (rqi->sge_va) {
  snic_pci_unmap_rsp_buf(snic, rqi);
  kfree((void *)rqi->sge_va);
  rqi->sge_va = 0;
 }
 snic_req_free(snic, rqi);
 SNIC_HOST_INFO(snic->shost, "snic_free_wq_buf .. freed.\n");

end:
 return;
}
