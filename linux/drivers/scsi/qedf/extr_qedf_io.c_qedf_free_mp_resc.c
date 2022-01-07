
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct scsi_sge {int dummy; } ;
struct qedf_mp_req {int * resp_buf; int resp_buf_dma; int * req_buf; int req_buf_dma; int * mp_resp_bd; int mp_resp_bd_dma; int * mp_req_bd; int mp_req_bd_dma; } ;
struct qedf_ioreq {TYPE_1__* fcport; struct qedf_mp_req mp_req; } ;
struct qedf_ctx {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct qedf_ctx* qedf; } ;


 int QEDF_PAGE_SIZE ;
 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void qedf_free_mp_resc(struct qedf_ioreq *io_req)
{
 struct qedf_mp_req *mp_req = &(io_req->mp_req);
 struct qedf_ctx *qedf = io_req->fcport->qedf;
 uint64_t sz = sizeof(struct scsi_sge);


 if (mp_req->mp_req_bd) {
  dma_free_coherent(&qedf->pdev->dev, sz,
      mp_req->mp_req_bd, mp_req->mp_req_bd_dma);
  mp_req->mp_req_bd = ((void*)0);
 }
 if (mp_req->mp_resp_bd) {
  dma_free_coherent(&qedf->pdev->dev, sz,
      mp_req->mp_resp_bd, mp_req->mp_resp_bd_dma);
  mp_req->mp_resp_bd = ((void*)0);
 }
 if (mp_req->req_buf) {
  dma_free_coherent(&qedf->pdev->dev, QEDF_PAGE_SIZE,
      mp_req->req_buf, mp_req->req_buf_dma);
  mp_req->req_buf = ((void*)0);
 }
 if (mp_req->resp_buf) {
  dma_free_coherent(&qedf->pdev->dev, QEDF_PAGE_SIZE,
      mp_req->resp_buf, mp_req->resp_buf_dma);
  mp_req->resp_buf = ((void*)0);
 }
}
