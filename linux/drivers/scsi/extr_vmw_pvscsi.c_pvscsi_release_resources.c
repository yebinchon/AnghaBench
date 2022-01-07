
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pvscsi_adapter {int req_pages; int cmp_pages; int msg_pages; int msgRingPA; scalar_t__ msg_ring; TYPE_1__* dev; int cmpRingPA; scalar_t__ cmp_ring; int reqRingPA; scalar_t__ req_ring; int ringStatePA; scalar_t__ rings_state; scalar_t__ cmd_map; scalar_t__ mmioBase; scalar_t__ workqueue; } ;
struct TYPE_3__ {int dev; } ;


 int PAGE_SIZE ;
 int destroy_workqueue (scalar_t__) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (scalar_t__) ;
 int pci_iounmap (TYPE_1__*,scalar_t__) ;
 int pci_release_regions (TYPE_1__*) ;
 int pvscsi_free_sgls (struct pvscsi_adapter*) ;

__attribute__((used)) static void pvscsi_release_resources(struct pvscsi_adapter *adapter)
{
 if (adapter->workqueue)
  destroy_workqueue(adapter->workqueue);

 if (adapter->mmioBase)
  pci_iounmap(adapter->dev, adapter->mmioBase);

 pci_release_regions(adapter->dev);

 if (adapter->cmd_map) {
  pvscsi_free_sgls(adapter);
  kfree(adapter->cmd_map);
 }

 if (adapter->rings_state)
  dma_free_coherent(&adapter->dev->dev, PAGE_SIZE,
        adapter->rings_state, adapter->ringStatePA);

 if (adapter->req_ring)
  dma_free_coherent(&adapter->dev->dev,
        adapter->req_pages * PAGE_SIZE,
        adapter->req_ring, adapter->reqRingPA);

 if (adapter->cmp_ring)
  dma_free_coherent(&adapter->dev->dev,
        adapter->cmp_pages * PAGE_SIZE,
        adapter->cmp_ring, adapter->cmpRingPA);

 if (adapter->msg_ring)
  dma_free_coherent(&adapter->dev->dev,
        adapter->msg_pages * PAGE_SIZE,
        adapter->msg_ring, adapter->msgRingPA);
}
