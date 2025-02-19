
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct tsk_mgmt_entry_fx00 {int dummy; } ;
struct TYPE_9__ {int comp_status; } ;
struct TYPE_7__ {TYPE_3__ tmf; } ;
struct srb_iocb {TYPE_1__ u; } ;
struct req_que {int dummy; } ;
struct TYPE_8__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_10__ {int (* done ) (TYPE_4__*,int ) ;TYPE_2__ u; } ;
typedef TYPE_4__ srb_t ;
typedef int scsi_qla_host_t ;
typedef int __le16 ;


 scalar_t__ CS_COMPLETE ;
 scalar_t__ CS_INCOMPLETE ;
 scalar_t__ SS_RESPONSE_INFO_LEN_VALID ;
 int cpu_to_le16 (int ) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static void
qlafx00_tm_iocb_entry(scsi_qla_host_t *vha, struct req_que *req,
        struct tsk_mgmt_entry_fx00 *pkt, srb_t *sp,
        __le16 sstatus, __le16 cpstatus)
{
 struct srb_iocb *tmf;

 tmf = &sp->u.iocb_cmd;
 if (cpstatus != cpu_to_le16((uint16_t)CS_COMPLETE) ||
     (sstatus & cpu_to_le16((uint16_t)SS_RESPONSE_INFO_LEN_VALID)))
  cpstatus = cpu_to_le16((uint16_t)CS_INCOMPLETE);
 tmf->u.tmf.comp_status = cpstatus;
 sp->done(sp, 0);
}
