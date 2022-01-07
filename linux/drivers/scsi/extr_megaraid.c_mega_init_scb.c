
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int idx; int list; int * cmd; int state; int dma_type; int * epthru; int epthru_dma_addr; int * pthru; int pthru_dma_addr; int * sgl; int * sgl64; int sgl_dma_addr; } ;
typedef TYPE_1__ scb_t ;
typedef int mega_sglist ;
typedef int mega_sgl64 ;
typedef int mega_passthru ;
typedef int mega_ext_passthru ;
struct TYPE_7__ {int max_cmds; int sglen; int free_list; TYPE_3__* dev; TYPE_1__* scb_list; } ;
typedef TYPE_2__ adapter_t ;
struct TYPE_8__ {int dev; } ;


 int MEGA_DMA_TYPE_NONE ;
 int SCB_FREE ;
 int dev_warn (int *,char*) ;
 int list_add (int *,int *) ;
 int mega_free_sgl (TYPE_2__*) ;
 void* pci_alloc_consistent (TYPE_3__*,int,int *) ;

__attribute__((used)) static int
mega_init_scb(adapter_t *adapter)
{
 scb_t *scb;
 int i;

 for( i = 0; i < adapter->max_cmds; i++ ) {

  scb = &adapter->scb_list[i];

  scb->sgl64 = ((void*)0);
  scb->sgl = ((void*)0);
  scb->pthru = ((void*)0);
  scb->epthru = ((void*)0);
 }

 for( i = 0; i < adapter->max_cmds; i++ ) {

  scb = &adapter->scb_list[i];

  scb->idx = i;

  scb->sgl64 = pci_alloc_consistent(adapter->dev,
    sizeof(mega_sgl64) * adapter->sglen,
    &scb->sgl_dma_addr);

  scb->sgl = (mega_sglist *)scb->sgl64;

  if( !scb->sgl ) {
   dev_warn(&adapter->dev->dev, "RAID: Can't allocate sglist\n");
   mega_free_sgl(adapter);
   return -1;
  }

  scb->pthru = pci_alloc_consistent(adapter->dev,
    sizeof(mega_passthru),
    &scb->pthru_dma_addr);

  if( !scb->pthru ) {
   dev_warn(&adapter->dev->dev, "RAID: Can't allocate passthru\n");
   mega_free_sgl(adapter);
   return -1;
  }

  scb->epthru = pci_alloc_consistent(adapter->dev,
    sizeof(mega_ext_passthru),
    &scb->epthru_dma_addr);

  if( !scb->epthru ) {
   dev_warn(&adapter->dev->dev,
    "Can't allocate extended passthru\n");
   mega_free_sgl(adapter);
   return -1;
  }


  scb->dma_type = MEGA_DMA_TYPE_NONE;






  scb->state = SCB_FREE;
  scb->cmd = ((void*)0);
  list_add(&scb->list, &adapter->free_list);
 }

 return 0;
}
