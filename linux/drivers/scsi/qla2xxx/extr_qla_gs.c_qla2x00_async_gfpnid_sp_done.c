
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct scsi_qla_host {int dummy; } ;
struct event_arg {int rc; TYPE_7__* sp; TYPE_8__* fcport; } ;
struct TYPE_17__ {int (* free ) (TYPE_7__*) ;int name; TYPE_8__* fcport; struct scsi_qla_host* vha; } ;
typedef TYPE_7__ srb_t ;
struct TYPE_16__ {TYPE_5__* ct_sns; } ;
struct TYPE_18__ {int fabric_port_name; int port_name; TYPE_6__ ct_desc; } ;
typedef TYPE_8__ fc_port_t ;
typedef int ea ;
struct TYPE_11__ {int * port_name; } ;
struct TYPE_12__ {TYPE_1__ gfpn_id; } ;
struct TYPE_13__ {TYPE_2__ rsp; } ;
struct TYPE_14__ {TYPE_3__ rsp; } ;
struct TYPE_15__ {TYPE_4__ p; } ;


 int WWN_SIZE ;
 int memcpy (int ,int *,int ) ;
 int memset (struct event_arg*,int ,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int,int ,int ) ;
 int ql_dbg_disc ;
 int qla24xx_handle_gfpnid_event (struct scsi_qla_host*,struct event_arg*) ;
 int stub1 (TYPE_7__*) ;
 scalar_t__ wwn_to_u64 (int *) ;

__attribute__((used)) static void qla2x00_async_gfpnid_sp_done(srb_t *sp, int res)
{
 struct scsi_qla_host *vha = sp->vha;
 fc_port_t *fcport = sp->fcport;
 u8 *fpn = fcport->ct_desc.ct_sns->p.rsp.rsp.gfpn_id.port_name;
 struct event_arg ea;
 u64 wwn;

 wwn = wwn_to_u64(fpn);
 if (wwn)
  memcpy(fcport->fabric_port_name, fpn, WWN_SIZE);

 memset(&ea, 0, sizeof(ea));
 ea.fcport = fcport;
 ea.sp = sp;
 ea.rc = res;

 ql_dbg(ql_dbg_disc, vha, 0x204f,
     "Async done-%s res %x, WWPN %8phC %8phC\n",
     sp->name, res, fcport->port_name, fcport->fabric_port_name);

 qla24xx_handle_gfpnid_event(vha, &ea);

 sp->free(sp);
}
