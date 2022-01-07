
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int comp; } ;
struct TYPE_12__ {TYPE_3__ els_logo; } ;
struct srb_iocb {TYPE_4__ u; } ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_13__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_14__ {int handle; int name; struct scsi_qla_host* vha; TYPE_5__ u; TYPE_7__* fcport; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_9__ {int al_pa; int area; int domain; } ;
struct TYPE_10__ {TYPE_1__ b; } ;
struct TYPE_15__ {TYPE_2__ d_id; } ;
typedef TYPE_7__ fc_port_t ;


 int complete (int *) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int ,int ) ;
 int ql_dbg_io ;

__attribute__((used)) static void qla2x00_els_dcmd_sp_done(srb_t *sp, int res)
{
 fc_port_t *fcport = sp->fcport;
 struct srb_iocb *lio = &sp->u.iocb_cmd;
 struct scsi_qla_host *vha = sp->vha;

 ql_dbg(ql_dbg_io, vha, 0x3072,
     "%s hdl=%x, portid=%02x%02x%02x done\n",
     sp->name, sp->handle, fcport->d_id.b.domain,
     fcport->d_id.b.area, fcport->d_id.b.al_pa);

 complete(&lio->u.els_logo.comp);
}
