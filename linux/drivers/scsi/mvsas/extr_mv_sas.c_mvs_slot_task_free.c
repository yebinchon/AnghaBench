
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int smp_req; int smp_resp; } ;
struct sas_task {int task_proto; int * lldd_task; TYPE_1__ smp_task; int data_dir; int * scatter; } ;
struct mvs_slot_info {int n_elem; int slot_tag; int * port; int * task; int entry; int * buf; int buf_dma; } ;
struct mvs_info {int dma_pool; int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;




 int dma_pool_free (int ,int *,int ) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 int list_del_init (int *) ;
 int mvs_slot_free (struct mvs_info*,int ) ;
 int sas_protocol_ata (int) ;

__attribute__((used)) static void mvs_slot_task_free(struct mvs_info *mvi, struct sas_task *task,
     struct mvs_slot_info *slot, u32 slot_idx)
{
 if (!slot)
  return;
 if (!slot->task)
  return;
 if (!sas_protocol_ata(task->task_proto))
  if (slot->n_elem)
   dma_unmap_sg(mvi->dev, task->scatter,
         slot->n_elem, task->data_dir);

 switch (task->task_proto) {
 case 130:
  dma_unmap_sg(mvi->dev, &task->smp_task.smp_resp, 1,
        DMA_FROM_DEVICE);
  dma_unmap_sg(mvi->dev, &task->smp_task.smp_req, 1,
        DMA_TO_DEVICE);
  break;

 case 131:
 case 128:
 case 129:
 default:

  break;
 }

 if (slot->buf) {
  dma_pool_free(mvi->dma_pool, slot->buf, slot->buf_dma);
  slot->buf = ((void*)0);
 }
 list_del_init(&slot->entry);
 task->lldd_task = ((void*)0);
 slot->task = ((void*)0);
 slot->port = ((void*)0);
 slot->slot_tag = 0xFFFFFFFF;
 mvs_slot_free(mvi, slot_idx);
}
