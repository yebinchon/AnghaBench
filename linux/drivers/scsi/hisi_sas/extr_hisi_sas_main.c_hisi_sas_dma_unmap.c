
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smp_req; } ;
struct sas_task {int task_proto; int num_scatter; TYPE_1__ smp_task; int data_dir; int * scatter; } ;
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;


 int DMA_TO_DEVICE ;
 int SAS_PROTOCOL_SMP ;
 int dma_unmap_sg (struct device*,int *,int,int ) ;
 int sas_protocol_ata (int) ;

__attribute__((used)) static void hisi_sas_dma_unmap(struct hisi_hba *hisi_hba,
          struct sas_task *task, int n_elem,
          int n_elem_req)
{
 struct device *dev = hisi_hba->dev;

 if (!sas_protocol_ata(task->task_proto)) {
  if (task->num_scatter) {
   if (n_elem)
    dma_unmap_sg(dev, task->scatter,
          task->num_scatter,
          task->data_dir);
  } else if (task->task_proto & SAS_PROTOCOL_SMP) {
   if (n_elem_req)
    dma_unmap_sg(dev, &task->smp_task.smp_req,
          1, DMA_TO_DEVICE);
  }
 }
}
