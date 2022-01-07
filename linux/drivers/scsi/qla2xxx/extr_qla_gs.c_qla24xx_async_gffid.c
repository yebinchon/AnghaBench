
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_29__ {int * port_id; } ;
struct TYPE_30__ {TYPE_2__ gff_id; } ;
struct ct_sns_req {TYPE_3__ req; } ;
struct TYPE_34__ {int nport_handle; int rsp_size; int req_size; int rsp_dma; int rsp; int req_dma; int req; } ;
struct TYPE_35__ {TYPE_7__ ctarg; } ;
struct TYPE_36__ {TYPE_8__ u; int timeout; } ;
struct TYPE_24__ {TYPE_9__ iocb_cmd; } ;
struct TYPE_25__ {char* name; int (* free ) (TYPE_11__*) ;int handle; int done; TYPE_10__ u; int gen2; int gen1; int type; } ;
typedef TYPE_11__ srb_t ;
struct TYPE_28__ {int online; } ;
struct TYPE_26__ {TYPE_1__ flags; } ;
typedef TYPE_12__ scsi_qla_host_t ;
struct TYPE_33__ {int ct_sns_dma; int ct_sns; } ;
struct TYPE_31__ {int al_pa; int area; int domain; } ;
struct TYPE_32__ {TYPE_4__ b; } ;
struct TYPE_27__ {int flags; int port_name; TYPE_6__ ct_desc; TYPE_5__ d_id; int login_gen; int rscn_gen; } ;
typedef TYPE_13__ fc_port_t ;


 int FCF_ASYNC_SENT ;
 int GFF_ID_CMD ;
 int GFF_ID_REQ_SIZE ;
 int GFF_ID_RSP_SIZE ;
 int GFP_KERNEL ;
 int NPH_SNS ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_CT_PTHRU_CMD ;
 int ql_dbg (int ,TYPE_12__*,int,char*,char*,int ,int ) ;
 int ql_dbg_disc ;
 int qla24xx_async_gffid_sp_done ;
 int qla2x00_async_iocb_timeout ;
 scalar_t__ qla2x00_get_async_timeout (TYPE_12__*) ;
 TYPE_11__* qla2x00_get_sp (TYPE_12__*,TYPE_13__*,int ) ;
 int qla2x00_init_timer (TYPE_11__*,scalar_t__) ;
 struct ct_sns_req* qla2x00_prep_ct_req (int ,int ,int ) ;
 int qla2x00_start_sp (TYPE_11__*) ;
 int stub1 (TYPE_11__*) ;

int qla24xx_async_gffid(scsi_qla_host_t *vha, fc_port_t *fcport)
{
 int rval = QLA_FUNCTION_FAILED;
 struct ct_sns_req *ct_req;
 srb_t *sp;

 if (!vha->flags.online || (fcport->flags & FCF_ASYNC_SENT))
  return rval;

 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  return rval;

 fcport->flags |= FCF_ASYNC_SENT;
 sp->type = SRB_CT_PTHRU_CMD;
 sp->name = "gffid";
 sp->gen1 = fcport->rscn_gen;
 sp->gen2 = fcport->login_gen;

 sp->u.iocb_cmd.timeout = qla2x00_async_iocb_timeout;
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);


 ct_req = qla2x00_prep_ct_req(fcport->ct_desc.ct_sns, GFF_ID_CMD,
     GFF_ID_RSP_SIZE);

 ct_req->req.gff_id.port_id[0] = fcport->d_id.b.domain;
 ct_req->req.gff_id.port_id[1] = fcport->d_id.b.area;
 ct_req->req.gff_id.port_id[2] = fcport->d_id.b.al_pa;

 sp->u.iocb_cmd.u.ctarg.req = fcport->ct_desc.ct_sns;
 sp->u.iocb_cmd.u.ctarg.req_dma = fcport->ct_desc.ct_sns_dma;
 sp->u.iocb_cmd.u.ctarg.rsp = fcport->ct_desc.ct_sns;
 sp->u.iocb_cmd.u.ctarg.rsp_dma = fcport->ct_desc.ct_sns_dma;
 sp->u.iocb_cmd.u.ctarg.req_size = GFF_ID_REQ_SIZE;
 sp->u.iocb_cmd.u.ctarg.rsp_size = GFF_ID_RSP_SIZE;
 sp->u.iocb_cmd.u.ctarg.nport_handle = NPH_SNS;

 sp->done = qla24xx_async_gffid_sp_done;

 ql_dbg(ql_dbg_disc, vha, 0x2132,
     "Async-%s hdl=%x  %8phC.\n", sp->name,
     sp->handle, fcport->port_name);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;

 return rval;
done_free_sp:
 sp->free(sp);
 fcport->flags &= ~FCF_ASYNC_SENT;
 return rval;
}
