
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct iscsi_task {struct beiscsi_io_task* dd_data; } ;
struct hwi_wrb_context {int dummy; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct beiscsi_io_task {scalar_t__ mtask_addr; int mtask_data_count; int * psgl_handle; int * pwrb_handle; } ;
struct beiscsi_hba {TYPE_1__* pcidev; struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {int beiscsi_conn_cid; struct beiscsi_hba* phba; } ;
struct TYPE_2__ {int dev; } ;


 size_t BE_GET_CRI_FROM_CID (int ) ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int free_mgmt_sgl_handle (struct beiscsi_hba*,int *) ;
 int free_wrb_handle (struct beiscsi_hba*,struct hwi_wrb_context*,int *) ;

void
beiscsi_free_mgmt_task_handles(struct beiscsi_conn *beiscsi_conn,
    struct iscsi_task *task)
{
 struct beiscsi_io_task *io_task;
 struct beiscsi_hba *phba = beiscsi_conn->phba;
 struct hwi_wrb_context *pwrb_context;
 struct hwi_controller *phwi_ctrlr;
 uint16_t cri_index = BE_GET_CRI_FROM_CID(
    beiscsi_conn->beiscsi_conn_cid);

 phwi_ctrlr = phba->phwi_ctrlr;
 pwrb_context = &phwi_ctrlr->wrb_context[cri_index];

 io_task = task->dd_data;

 if (io_task->pwrb_handle) {
  free_wrb_handle(phba, pwrb_context, io_task->pwrb_handle);
  io_task->pwrb_handle = ((void*)0);
 }

 if (io_task->psgl_handle) {
  free_mgmt_sgl_handle(phba, io_task->psgl_handle);
  io_task->psgl_handle = ((void*)0);
 }

 if (io_task->mtask_addr) {
  dma_unmap_single(&phba->pcidev->dev,
     io_task->mtask_addr,
     io_task->mtask_data_count,
     DMA_TO_DEVICE);
  io_task->mtask_addr = 0;
 }
}
