
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qedf_rport {int handle; TYPE_2__* rdata; } ;
struct qedf_ctx {TYPE_3__* pdev; int cdev; int dbg_ctx; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int (* release_conn ) (int ,int ) ;int (* destroy_conn ) (int ,int ,int ) ;} ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {int port_id; } ;
struct TYPE_6__ {TYPE_1__ ids; } ;


 int GFP_KERNEL ;
 int QEDF_INFO (int *,int ,char*,int ) ;
 int QEDF_LOG_CONN ;
 int QEDF_TERM_BUFF_SIZE ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,void*,int ) ;
 TYPE_4__* qed_ops ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void qedf_upload_connection(struct qedf_ctx *qedf,
 struct qedf_rport *fcport)
{
 void *term_params;
 dma_addr_t term_params_dma;





 term_params = dma_alloc_coherent(&qedf->pdev->dev, QEDF_TERM_BUFF_SIZE,
  &term_params_dma, GFP_KERNEL);

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_CONN, "Uploading connection "
     "port_id=%06x.\n", fcport->rdata->ids.port_id);

 qed_ops->destroy_conn(qedf->cdev, fcport->handle, term_params_dma);
 qed_ops->release_conn(qedf->cdev, fcport->handle);

 dma_free_coherent(&qedf->pdev->dev, QEDF_TERM_BUFF_SIZE, term_params,
     term_params_dma);
}
