
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_18__ {scalar_t__ scan_retry; int scan_flags; } ;
struct TYPE_17__ {scalar_t__ nvme_enabled; } ;
struct scsi_qla_host {int dpc_flags; int work_lock; TYPE_6__ scan; TYPE_5__ flags; } ;
struct ct_sns_req {int command; } ;
struct TYPE_13__ {scalar_t__ req; } ;
struct TYPE_14__ {TYPE_1__ ctarg; } ;
struct TYPE_15__ {int timer; TYPE_2__ u; } ;
struct TYPE_16__ {TYPE_3__ iocb_cmd; } ;
struct TYPE_19__ {scalar_t__ gen2; char* name; int rc; TYPE_4__ u; struct scsi_qla_host* vha; } ;
typedef TYPE_7__ srb_t ;


 scalar_t__ FC4_TYPE_FCP_SCSI ;
 scalar_t__ GNN_FT_CMD ;
 scalar_t__ GPN_FT_CMD ;
 int LOCAL_LOOP_UPDATE ;
 int LOOP_RESYNC_NEEDED ;
 scalar_t__ MAX_SCAN_RETRIES ;
 int QLA_EVT_GNNFT_DONE ;
 int QLA_EVT_GPNFT ;
 int QLA_EVT_GPNFT_DONE ;
 int SF_SCANNING ;
 scalar_t__ be16_to_cpu (int ) ;
 int del_timer (int *) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,char const*,...) ;
 int ql_dbg_disc ;
 int qla24xx_sp_unmap (struct scsi_qla_host*,TYPE_7__*) ;
 int qla2x00_find_free_fcp_nvme_slot (struct scsi_qla_host*,TYPE_7__*) ;
 int qla2x00_post_gnnft_gpnft_done_work (struct scsi_qla_host*,TYPE_7__*,int ) ;
 int qla2x00_post_nvme_gpnft_work (struct scsi_qla_host*,TYPE_7__*,int ) ;
 int qla2xxx_wake_dpc (struct scsi_qla_host*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qla2x00_async_gpnft_gnnft_sp_done(srb_t *sp, int res)
{
 struct scsi_qla_host *vha = sp->vha;
 struct ct_sns_req *ct_req =
  (struct ct_sns_req *)sp->u.iocb_cmd.u.ctarg.req;
 u16 cmd = be16_to_cpu(ct_req->command);
 u8 fc4_type = sp->gen2;
 unsigned long flags;
 int rc;


 ql_dbg(ql_dbg_disc, vha, 0xffff,
     "Async done-%s res %x FC4Type %x\n",
     sp->name, res, sp->gen2);

 del_timer(&sp->u.iocb_cmd.timer);
 sp->rc = res;
 if (res) {
  unsigned long flags;
  const char *name = sp->name;






  rc = qla2x00_post_gnnft_gpnft_done_work(vha, sp,
      QLA_EVT_GNNFT_DONE);
  if (rc) {

   qla24xx_sp_unmap(vha, sp);

   spin_lock_irqsave(&vha->work_lock, flags);
   vha->scan.scan_flags &= ~SF_SCANNING;
   vha->scan.scan_retry++;
   spin_unlock_irqrestore(&vha->work_lock, flags);

   if (vha->scan.scan_retry < MAX_SCAN_RETRIES) {
    set_bit(LOCAL_LOOP_UPDATE, &vha->dpc_flags);
    set_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
    qla2xxx_wake_dpc(vha);
   } else {
    ql_dbg(ql_dbg_disc, vha, 0xffff,
        "Async done-%s rescan failed on all retries.\n",
        name);
   }
  }
  return;
 }

 qla2x00_find_free_fcp_nvme_slot(vha, sp);

 if ((fc4_type == FC4_TYPE_FCP_SCSI) && vha->flags.nvme_enabled &&
     cmd == GNN_FT_CMD) {
  spin_lock_irqsave(&vha->work_lock, flags);
  vha->scan.scan_flags &= ~SF_SCANNING;
  spin_unlock_irqrestore(&vha->work_lock, flags);

  sp->rc = res;
  rc = qla2x00_post_nvme_gpnft_work(vha, sp, QLA_EVT_GPNFT);
  if (rc) {
   qla24xx_sp_unmap(vha, sp);
   set_bit(LOCAL_LOOP_UPDATE, &vha->dpc_flags);
   set_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
  }
  return;
 }

 if (cmd == GPN_FT_CMD) {
  rc = qla2x00_post_gnnft_gpnft_done_work(vha, sp,
      QLA_EVT_GPNFT_DONE);
 } else {
  rc = qla2x00_post_gnnft_gpnft_done_work(vha, sp,
      QLA_EVT_GNNFT_DONE);
 }

 if (rc) {
  qla24xx_sp_unmap(vha, sp);
  set_bit(LOCAL_LOOP_UPDATE, &vha->dpc_flags);
  set_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
  return;
 }
}
