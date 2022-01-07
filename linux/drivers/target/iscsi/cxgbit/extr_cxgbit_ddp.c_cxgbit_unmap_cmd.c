
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_conn {struct cxgbit_sock* context; } ;
struct TYPE_5__ {scalar_t__ data_length; } ;
struct iscsi_cmd {scalar_t__ write_data_done; TYPE_2__ se_cmd; } ;
struct TYPE_4__ {struct cxgbit_device* cdev; } ;
struct cxgbit_sock {TYPE_1__ com; } ;
struct cxgbit_device {int dummy; } ;
struct cxgbi_task_tag_info {int nents; scalar_t__ sgl; int idx; } ;
struct cxgbit_cmd {int release; int sg; struct cxgbi_task_tag_info ttinfo; } ;
struct cxgbi_ppm {TYPE_3__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 struct cxgbi_ppm* cdev2ppm (struct cxgbit_device*) ;
 int cxgbi_ppm_ppod_release (struct cxgbi_ppm*,int ) ;
 int cxgbit_abort_conn (struct cxgbit_sock*) ;
 int dma_unmap_sg (int *,scalar_t__,int ,int ) ;
 struct cxgbit_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int put_page (int ) ;
 int sg_page (int *) ;
 scalar_t__ unlikely (int) ;

void cxgbit_unmap_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
 struct cxgbit_cmd *ccmd = iscsit_priv_cmd(cmd);

 if (ccmd->release) {
  struct cxgbi_task_tag_info *ttinfo = &ccmd->ttinfo;

  if (ttinfo->sgl) {
   struct cxgbit_sock *csk = conn->context;
   struct cxgbit_device *cdev = csk->com.cdev;
   struct cxgbi_ppm *ppm = cdev2ppm(cdev);





   if (unlikely(cmd->write_data_done !=
         cmd->se_cmd.data_length))
    cxgbit_abort_conn(csk);

   cxgbi_ppm_ppod_release(ppm, ttinfo->idx);

   dma_unmap_sg(&ppm->pdev->dev, ttinfo->sgl,
         ttinfo->nents, DMA_FROM_DEVICE);
  } else {
   put_page(sg_page(&ccmd->sg));
  }

  ccmd->release = 0;
 }
}
