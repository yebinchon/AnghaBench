
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int smp_req; int smp_resp; } ;
struct sas_task {int task_proto; int num_scatter; int * lldd_task; TYPE_1__ smp_task; int data_dir; int * scatter; } ;
struct pm8001_hba_info {int dev; } ;
struct pm8001_ccb_info {int ccb_tag; scalar_t__ open_retry; int * task; scalar_t__ n_elem; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;




 int dma_unmap_sg (int ,int *,int,int ) ;
 int pm8001_tag_free (struct pm8001_hba_info*,int ) ;
 int sas_protocol_ata (int) ;

void pm8001_ccb_task_free(struct pm8001_hba_info *pm8001_ha,
 struct sas_task *task, struct pm8001_ccb_info *ccb, u32 ccb_idx)
{
 if (!ccb->task)
  return;
 if (!sas_protocol_ata(task->task_proto))
  if (ccb->n_elem)
   dma_unmap_sg(pm8001_ha->dev, task->scatter,
    task->num_scatter, task->data_dir);

 switch (task->task_proto) {
 case 130:
  dma_unmap_sg(pm8001_ha->dev, &task->smp_task.smp_resp, 1,
   DMA_FROM_DEVICE);
  dma_unmap_sg(pm8001_ha->dev, &task->smp_task.smp_req, 1,
   DMA_TO_DEVICE);
  break;

 case 131:
 case 128:
 case 129:
 default:

  break;
 }
 task->lldd_task = ((void*)0);
 ccb->task = ((void*)0);
 ccb->ccb_tag = 0xFFFFFFFF;
 ccb->open_retry = 0;
 pm8001_tag_free(pm8001_ha, ccb_idx);
}
