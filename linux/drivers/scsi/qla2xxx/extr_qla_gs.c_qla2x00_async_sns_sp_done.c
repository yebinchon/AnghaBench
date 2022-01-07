
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct scsi_qla_host {TYPE_2__* hw; } ;
struct TYPE_18__ {TYPE_9__* sp; } ;
struct TYPE_19__ {TYPE_7__ iosb; } ;
struct qla_work_evt {TYPE_8__ u; } ;
struct ct_sns_pkt {int dummy; } ;
struct TYPE_14__ {int * rsp; int rsp_dma; int rsp_allocated_size; int * req; int req_dma; int req_allocated_size; } ;
struct TYPE_15__ {TYPE_3__ ctarg; } ;
struct TYPE_16__ {TYPE_4__ u; int timer; } ;
struct TYPE_17__ {TYPE_5__ iocb_cmd; } ;
struct TYPE_20__ {int rc; int retry_count; int (* free ) (TYPE_9__*) ;TYPE_6__ u; int name; struct scsi_qla_host* vha; } ;
typedef TYPE_9__ srb_t ;
struct TYPE_13__ {TYPE_1__* pdev; } ;
struct TYPE_12__ {int dev; } ;


 int QLA_EVT_SP_RETRY ;
 int QLA_EVT_UNMAP ;
 int QLA_FUNCTION_TIMEOUT ;
 int QLA_SUCCESS ;
 int del_timer (int *) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int memset (struct ct_sns_pkt*,int ,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,...) ;
 int ql_dbg_disc ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;
 int stub1 (TYPE_9__*) ;

__attribute__((used)) static void qla2x00_async_sns_sp_done(srb_t *sp, int rc)
{
 struct scsi_qla_host *vha = sp->vha;
 struct ct_sns_pkt *ct_sns;
 struct qla_work_evt *e;

 sp->rc = rc;
 if (rc == QLA_SUCCESS) {
  ql_dbg(ql_dbg_disc, vha, 0x204f,
      "Async done-%s exiting normally.\n",
      sp->name);
 } else if (rc == QLA_FUNCTION_TIMEOUT) {
  ql_dbg(ql_dbg_disc, vha, 0x204f,
      "Async done-%s timeout\n", sp->name);
 } else {
  ct_sns = (struct ct_sns_pkt *)sp->u.iocb_cmd.u.ctarg.rsp;
  memset(ct_sns, 0, sizeof(*ct_sns));
  sp->retry_count++;
  if (sp->retry_count > 3)
   goto err;

  ql_dbg(ql_dbg_disc, vha, 0x204f,
      "Async done-%s fail rc %x.  Retry count %d\n",
      sp->name, rc, sp->retry_count);

  e = qla2x00_alloc_work(vha, QLA_EVT_SP_RETRY);
  if (!e)
   goto err2;

  del_timer(&sp->u.iocb_cmd.timer);
  e->u.iosb.sp = sp;
  qla2x00_post_work(vha, e);
  return;
 }

err:
 e = qla2x00_alloc_work(vha, QLA_EVT_UNMAP);
err2:
 if (!e) {

  if (sp->u.iocb_cmd.u.ctarg.req) {
   dma_free_coherent(&vha->hw->pdev->dev,
       sp->u.iocb_cmd.u.ctarg.req_allocated_size,
       sp->u.iocb_cmd.u.ctarg.req,
       sp->u.iocb_cmd.u.ctarg.req_dma);
   sp->u.iocb_cmd.u.ctarg.req = ((void*)0);
  }

  if (sp->u.iocb_cmd.u.ctarg.rsp) {
   dma_free_coherent(&vha->hw->pdev->dev,
       sp->u.iocb_cmd.u.ctarg.rsp_allocated_size,
       sp->u.iocb_cmd.u.ctarg.rsp,
       sp->u.iocb_cmd.u.ctarg.rsp_dma);
   sp->u.iocb_cmd.u.ctarg.rsp = ((void*)0);
  }

  sp->free(sp);

  return;
 }

 e->u.iosb.sp = sp;
 qla2x00_post_work(vha, e);
}
