
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sas_task {scalar_t__ data_dir; scalar_t__ num_scatter; scalar_t__ task_proto; int scatter; int total_xfer_len; } ;
struct asd_ha_struct {TYPE_4__* pcidev; } ;
struct asd_ascb {int sg_arr; struct asd_ha_struct* ha; TYPE_3__* scb; struct sas_task* uldd_task; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {TYPE_1__* sg_element; } ;
struct TYPE_7__ {TYPE_2__ ssp_task; } ;
struct TYPE_5__ {int bus_addr; } ;


 scalar_t__ DMA_NONE ;
 scalar_t__ SAS_PROTOCOL_STP ;
 int asd_free_coherent (struct asd_ha_struct*,int ) ;
 int dma_unmap_sg (int *,int ,scalar_t__,scalar_t__) ;
 int dma_unmap_single (int *,int ,int ,scalar_t__) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void asd_unmap_scatterlist(struct asd_ascb *ascb)
{
 struct asd_ha_struct *asd_ha = ascb->ha;
 struct sas_task *task = ascb->uldd_task;

 if (task->data_dir == DMA_NONE)
  return;

 if (task->num_scatter == 0) {
  dma_addr_t dma = (dma_addr_t)
         le64_to_cpu(ascb->scb->ssp_task.sg_element[0].bus_addr);
  dma_unmap_single(&ascb->ha->pcidev->dev, dma,
     task->total_xfer_len, task->data_dir);
  return;
 }

 asd_free_coherent(asd_ha, ascb->sg_arr);
 if (task->task_proto != SAS_PROTOCOL_STP)
  dma_unmap_sg(&asd_ha->pcidev->dev, task->scatter,
        task->num_scatter, task->data_dir);
}
