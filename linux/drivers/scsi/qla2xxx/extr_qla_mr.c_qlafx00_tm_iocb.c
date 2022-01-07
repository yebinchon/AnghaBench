
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct tsk_mgmt_entry_fx00 {int entry_count; void* control_flags; int lun; int tgt_id; scalar_t__ reserved_0; void* handle; int entry_type; } ;
struct TYPE_10__ {int lun; int flags; } ;
struct TYPE_11__ {TYPE_3__ tmf; } ;
struct srb_iocb {TYPE_4__ u; } ;
struct scsi_lun {int dummy; } ;
struct req_que {int id; } ;
struct TYPE_8__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_12__ {TYPE_2__* fcport; int handle; TYPE_6__* vha; TYPE_1__ u; } ;
typedef TYPE_5__ srb_t ;
struct TYPE_13__ {struct req_que* req; } ;
typedef TYPE_6__ scsi_qla_host_t ;
struct TYPE_9__ {int tgt_id; } ;


 int MAKE_HANDLE (int ,int ) ;
 scalar_t__ TCF_LUN_RESET ;
 int TSK_MGMT_IOCB_TYPE_FX00 ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int host_to_adap (int *,int *,int) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int memcpy (void*,struct tsk_mgmt_entry_fx00*,int) ;
 int memset (struct tsk_mgmt_entry_fx00*,int ,int) ;
 int wmb () ;

void
qlafx00_tm_iocb(srb_t *sp, struct tsk_mgmt_entry_fx00 *ptm_iocb)
{
 struct srb_iocb *fxio = &sp->u.iocb_cmd;
 scsi_qla_host_t *vha = sp->vha;
 struct req_que *req = vha->req;
 struct tsk_mgmt_entry_fx00 tm_iocb;
 struct scsi_lun llun;

 memset(&tm_iocb, 0, sizeof(struct tsk_mgmt_entry_fx00));
 tm_iocb.entry_type = TSK_MGMT_IOCB_TYPE_FX00;
 tm_iocb.entry_count = 1;
 tm_iocb.handle = cpu_to_le32(MAKE_HANDLE(req->id, sp->handle));
 tm_iocb.reserved_0 = 0;
 tm_iocb.tgt_id = cpu_to_le16(sp->fcport->tgt_id);
 tm_iocb.control_flags = cpu_to_le32(fxio->u.tmf.flags);
 if (tm_iocb.control_flags == cpu_to_le32((uint32_t)TCF_LUN_RESET)) {
  int_to_scsilun(fxio->u.tmf.lun, &llun);
  host_to_adap((uint8_t *)&llun, (uint8_t *)&tm_iocb.lun,
      sizeof(struct scsi_lun));
 }

 memcpy((void *)ptm_iocb, &tm_iocb,
     sizeof(struct tsk_mgmt_entry_fx00));
 wmb();
}
