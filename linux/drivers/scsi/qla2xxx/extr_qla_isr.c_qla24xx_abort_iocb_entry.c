
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int comp_status; } ;
struct TYPE_9__ {TYPE_2__ abt; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int dummy; } ;
struct abort_entry_24xx {int nport_handle; } ;
struct TYPE_7__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_10__ {int (* done ) (TYPE_4__*,int ) ;TYPE_1__ u; } ;
typedef TYPE_4__ srb_t ;
typedef int scsi_qla_host_t ;


 int le16_to_cpu (int ) ;
 TYPE_4__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,struct abort_entry_24xx*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static void
qla24xx_abort_iocb_entry(scsi_qla_host_t *vha, struct req_que *req,
 struct abort_entry_24xx *pkt)
{
 const char func[] = "ABT_IOCB";
 srb_t *sp;
 struct srb_iocb *abt;

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (!sp)
  return;

 abt = &sp->u.iocb_cmd;
 abt->u.abt.comp_status = le16_to_cpu(pkt->nport_handle);
 sp->done(sp, 0);
}
