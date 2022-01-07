
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


struct TYPE_9__ {int cmd_hndl; } ;
struct TYPE_10__ {TYPE_2__ abt; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int id; } ;
struct abort_iocb_entry_fx00 {int entry_count; void* req_que_no; void* tgt_id_sts; void* abort_handle; void* handle; int entry_type; } ;
struct TYPE_8__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_12__ {TYPE_4__* fcport; int handle; TYPE_6__* vha; TYPE_1__ u; } ;
typedef TYPE_5__ srb_t ;
struct TYPE_13__ {struct req_que* req; } ;
typedef TYPE_6__ scsi_qla_host_t ;
struct TYPE_11__ {int tgt_id; } ;


 int ABORT_IOCB_TYPE_FX00 ;
 int MAKE_HANDLE (int ,int ) ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int memcpy (void*,struct abort_iocb_entry_fx00*,int) ;
 int memset (struct abort_iocb_entry_fx00*,int ,int) ;
 int wmb () ;

void
qlafx00_abort_iocb(srb_t *sp, struct abort_iocb_entry_fx00 *pabt_iocb)
{
 struct srb_iocb *fxio = &sp->u.iocb_cmd;
 scsi_qla_host_t *vha = sp->vha;
 struct req_que *req = vha->req;
 struct abort_iocb_entry_fx00 abt_iocb;

 memset(&abt_iocb, 0, sizeof(struct abort_iocb_entry_fx00));
 abt_iocb.entry_type = ABORT_IOCB_TYPE_FX00;
 abt_iocb.entry_count = 1;
 abt_iocb.handle = cpu_to_le32(MAKE_HANDLE(req->id, sp->handle));
 abt_iocb.abort_handle =
     cpu_to_le32(MAKE_HANDLE(req->id, fxio->u.abt.cmd_hndl));
 abt_iocb.tgt_id_sts = cpu_to_le16(sp->fcport->tgt_id);
 abt_iocb.req_que_no = cpu_to_le16(req->id);

 memcpy((void *)pabt_iocb, &abt_iocb,
     sizeof(struct abort_iocb_entry_fx00));
 wmb();
}
