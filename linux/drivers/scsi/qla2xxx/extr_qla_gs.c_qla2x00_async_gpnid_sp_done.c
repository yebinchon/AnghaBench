
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_14__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct scsi_qla_host {TYPE_7__* hw; } ;
struct TYPE_21__ {TYPE_14__* sp; } ;
struct TYPE_22__ {TYPE_12__ iosb; } ;
struct qla_work_evt {TYPE_13__ u; } ;
struct event_arg {int rc; int id; TYPE_14__* sp; int port_name; } ;
struct TYPE_24__ {int port_name; } ;
struct TYPE_25__ {TYPE_1__ gpn_id; } ;
struct ct_sns_rsp {TYPE_2__ rsp; } ;
struct TYPE_26__ {int port_id; } ;
struct TYPE_27__ {TYPE_3__ port_id; } ;
struct ct_sns_req {TYPE_4__ req; } ;
struct TYPE_31__ {int * rsp; int rsp_dma; int rsp_allocated_size; int * req; int req_dma; int req_allocated_size; } ;
struct TYPE_32__ {TYPE_8__ ctarg; } ;
struct TYPE_19__ {TYPE_9__ u; } ;
struct TYPE_20__ {TYPE_10__ iocb_cmd; } ;
struct TYPE_23__ {int gen1; int (* free ) (TYPE_14__*) ;TYPE_11__ u; struct scsi_qla_host* vha; int elem; int name; } ;
typedef TYPE_14__ srb_t ;
typedef int ea ;
struct TYPE_28__ {int sess_lock; } ;
struct TYPE_30__ {TYPE_6__* pdev; TYPE_5__ tgt; } ;
struct TYPE_29__ {int dev; } ;


 int QLA_EVT_UNMAP ;
 int QLA_FUNCTION_TIMEOUT ;
 int WWN_SIZE ;
 int be_to_port_id (int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int list_del (int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct event_arg*,int ,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int,int,int ,...) ;
 int ql_dbg_disc ;
 int qla24xx_handle_gpnid_event (struct scsi_qla_host*,struct event_arg*) ;
 int qla24xx_post_gpnid_work (struct scsi_qla_host*,int *) ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_14__*) ;
 int stub2 (TYPE_14__*) ;
 int stub3 (TYPE_14__*) ;

__attribute__((used)) static void qla2x00_async_gpnid_sp_done(srb_t *sp, int res)
{
 struct scsi_qla_host *vha = sp->vha;
 struct ct_sns_req *ct_req =
     (struct ct_sns_req *)sp->u.iocb_cmd.u.ctarg.req;
 struct ct_sns_rsp *ct_rsp =
     (struct ct_sns_rsp *)sp->u.iocb_cmd.u.ctarg.rsp;
 struct event_arg ea;
 struct qla_work_evt *e;
 unsigned long flags;

 if (res)
  ql_dbg(ql_dbg_disc, vha, 0x2066,
      "Async done-%s fail res %x rscn gen %d ID %3phC. %8phC\n",
      sp->name, res, sp->gen1, &ct_req->req.port_id.port_id,
      ct_rsp->rsp.gpn_id.port_name);
 else
  ql_dbg(ql_dbg_disc, vha, 0x2066,
      "Async done-%s good rscn gen %d ID %3phC. %8phC\n",
      sp->name, sp->gen1, &ct_req->req.port_id.port_id,
      ct_rsp->rsp.gpn_id.port_name);

 memset(&ea, 0, sizeof(ea));
 memcpy(ea.port_name, ct_rsp->rsp.gpn_id.port_name, WWN_SIZE);
 ea.sp = sp;
 ea.id = be_to_port_id(ct_req->req.port_id.port_id);
 ea.rc = res;

 spin_lock_irqsave(&vha->hw->tgt.sess_lock, flags);
 list_del(&sp->elem);
 spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);

 if (res) {
  if (res == QLA_FUNCTION_TIMEOUT) {
   qla24xx_post_gpnid_work(sp->vha, &ea.id);
   sp->free(sp);
   return;
  }
 } else if (sp->gen1) {

  qla24xx_post_gpnid_work(sp->vha, &ea.id);
  sp->free(sp);
  return;
 }

 qla24xx_handle_gpnid_event(vha, &ea);

 e = qla2x00_alloc_work(vha, QLA_EVT_UNMAP);
 if (!e) {

  dma_free_coherent(&vha->hw->pdev->dev,
      sp->u.iocb_cmd.u.ctarg.req_allocated_size,
      sp->u.iocb_cmd.u.ctarg.req,
      sp->u.iocb_cmd.u.ctarg.req_dma);
  sp->u.iocb_cmd.u.ctarg.req = ((void*)0);

  dma_free_coherent(&vha->hw->pdev->dev,
      sp->u.iocb_cmd.u.ctarg.rsp_allocated_size,
      sp->u.iocb_cmd.u.ctarg.rsp,
      sp->u.iocb_cmd.u.ctarg.rsp_dma);
  sp->u.iocb_cmd.u.ctarg.rsp = ((void*)0);

  sp->free(sp);
  return;
 }

 e->u.iosb.sp = sp;
 qla2x00_post_work(vha, e);
}
