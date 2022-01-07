
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
 int EINVAL ;
 int ENOMEM ;
 int HISI_SAS_SGE_PAGE_CNT ;
 int SAS_PROTOCOL_SMP ;
 int dev_err (struct device*,char*,int) ;
 int dma_map_sg (struct device*,int *,int,int ) ;
 int hisi_sas_dma_unmap (struct hisi_hba*,struct sas_task*,int,int) ;
 scalar_t__ sas_protocol_ata (int) ;
 unsigned int sg_dma_len (int *) ;

__attribute__((used)) static int hisi_sas_dma_map(struct hisi_hba *hisi_hba,
       struct sas_task *task, int *n_elem,
       int *n_elem_req)
{
 struct device *dev = hisi_hba->dev;
 int rc;

 if (sas_protocol_ata(task->task_proto)) {
  *n_elem = task->num_scatter;
 } else {
  unsigned int req_len;

  if (task->num_scatter) {
   *n_elem = dma_map_sg(dev, task->scatter,
          task->num_scatter, task->data_dir);
   if (!*n_elem) {
    rc = -ENOMEM;
    goto prep_out;
   }
  } else if (task->task_proto & SAS_PROTOCOL_SMP) {
   *n_elem_req = dma_map_sg(dev, &task->smp_task.smp_req,
       1, DMA_TO_DEVICE);
   if (!*n_elem_req) {
    rc = -ENOMEM;
    goto prep_out;
   }
   req_len = sg_dma_len(&task->smp_task.smp_req);
   if (req_len & 0x3) {
    rc = -EINVAL;
    goto err_out_dma_unmap;
   }
  }
 }

 if (*n_elem > HISI_SAS_SGE_PAGE_CNT) {
  dev_err(dev, "task prep: n_elem(%d) > HISI_SAS_SGE_PAGE_CNT",
   *n_elem);
  rc = -EINVAL;
  goto err_out_dma_unmap;
 }
 return 0;

err_out_dma_unmap:

 hisi_sas_dma_unmap(hisi_hba, task, *n_elem,
      *n_elem_req);
prep_out:
 return rc;
}
