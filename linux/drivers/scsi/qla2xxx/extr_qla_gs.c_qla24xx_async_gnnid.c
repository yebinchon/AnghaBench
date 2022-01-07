
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_22__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_27__ {int port_id; } ;
struct TYPE_28__ {TYPE_2__ port_id; } ;
struct ct_sns_req {TYPE_3__ req; } ;
struct TYPE_30__ {int nport_handle; int rsp_size; int req_size; int rsp_dma; int rsp; int req_dma; int req; } ;
struct TYPE_31__ {TYPE_5__ ctarg; } ;
struct TYPE_32__ {TYPE_6__ u; int timeout; } ;
struct TYPE_33__ {TYPE_7__ iocb_cmd; } ;
struct TYPE_34__ {char* name; int (* free ) (TYPE_9__*) ;int handle; int done; TYPE_8__ u; int gen2; int gen1; int type; } ;
typedef TYPE_9__ srb_t ;
struct TYPE_25__ {int online; } ;
struct TYPE_23__ {TYPE_1__ flags; } ;
typedef TYPE_10__ scsi_qla_host_t ;
struct TYPE_26__ {int b24; } ;
struct TYPE_29__ {int ct_sns_dma; int ct_sns; } ;
struct TYPE_24__ {int flags; TYPE_22__ d_id; int loop_id; int port_name; TYPE_4__ ct_desc; int login_gen; int rscn_gen; int disc_state; } ;
typedef TYPE_11__ fc_port_t ;


 int DSC_GNN_ID ;
 int FCF_ASYNC_SENT ;
 int GFP_ATOMIC ;
 int GNN_ID_CMD ;
 int GNN_ID_REQ_SIZE ;
 int GNN_ID_RSP_SIZE ;
 int NPH_SNS ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_CT_PTHRU_CMD ;
 int port_id_to_be_id (TYPE_22__) ;
 int ql_dbg (int ,TYPE_10__*,int,char*,char*,int ,int ,int ,int ) ;
 int ql_dbg_disc ;
 int qla2x00_async_gnnid_sp_done ;
 int qla2x00_async_iocb_timeout ;
 scalar_t__ qla2x00_get_async_timeout (TYPE_10__*) ;
 TYPE_9__* qla2x00_get_sp (TYPE_10__*,TYPE_11__*,int ) ;
 int qla2x00_init_timer (TYPE_9__*,scalar_t__) ;
 struct ct_sns_req* qla2x00_prep_ct_req (int ,int ,int ) ;
 int qla2x00_start_sp (TYPE_9__*) ;
 int stub1 (TYPE_9__*) ;

int qla24xx_async_gnnid(scsi_qla_host_t *vha, fc_port_t *fcport)
{
 int rval = QLA_FUNCTION_FAILED;
 struct ct_sns_req *ct_req;
 srb_t *sp;

 if (!vha->flags.online || (fcport->flags & FCF_ASYNC_SENT))
  return rval;

 fcport->disc_state = DSC_GNN_ID;
 sp = qla2x00_get_sp(vha, fcport, GFP_ATOMIC);
 if (!sp)
  goto done;

 fcport->flags |= FCF_ASYNC_SENT;
 sp->type = SRB_CT_PTHRU_CMD;
 sp->name = "gnnid";
 sp->gen1 = fcport->rscn_gen;
 sp->gen2 = fcport->login_gen;

 sp->u.iocb_cmd.timeout = qla2x00_async_iocb_timeout;
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);


 ct_req = qla2x00_prep_ct_req(fcport->ct_desc.ct_sns, GNN_ID_CMD,
     GNN_ID_RSP_SIZE);


 ct_req->req.port_id.port_id = port_id_to_be_id(fcport->d_id);



 sp->u.iocb_cmd.u.ctarg.req = fcport->ct_desc.ct_sns;
 sp->u.iocb_cmd.u.ctarg.req_dma = fcport->ct_desc.ct_sns_dma;
 sp->u.iocb_cmd.u.ctarg.rsp = fcport->ct_desc.ct_sns;
 sp->u.iocb_cmd.u.ctarg.rsp_dma = fcport->ct_desc.ct_sns_dma;
 sp->u.iocb_cmd.u.ctarg.req_size = GNN_ID_REQ_SIZE;
 sp->u.iocb_cmd.u.ctarg.rsp_size = GNN_ID_RSP_SIZE;
 sp->u.iocb_cmd.u.ctarg.nport_handle = NPH_SNS;

 sp->done = qla2x00_async_gnnid_sp_done;

 ql_dbg(ql_dbg_disc, vha, 0xffff,
     "Async-%s - %8phC hdl=%x loopid=%x portid %06x.\n",
     sp->name, fcport->port_name,
     sp->handle, fcport->loop_id, fcport->d_id.b24);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;
 return rval;

done_free_sp:
 sp->free(sp);
 fcport->flags &= ~FCF_ASYNC_SENT;
done:
 return rval;
}
