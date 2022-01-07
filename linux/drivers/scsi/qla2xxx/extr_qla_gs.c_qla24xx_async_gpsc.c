
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


struct TYPE_29__ {int port_name; } ;
struct TYPE_30__ {TYPE_2__ gpsc; } ;
struct ct_sns_req {TYPE_3__ req; } ;
struct TYPE_32__ {int nport_handle; int rsp_size; int req_size; int rsp_dma; int rsp; int req_dma; int req; } ;
struct TYPE_33__ {TYPE_5__ ctarg; } ;
struct TYPE_34__ {int timeout; TYPE_6__ u; } ;
struct TYPE_35__ {TYPE_7__ iocb_cmd; } ;
struct TYPE_25__ {char* name; int (* free ) (TYPE_11__*) ;int handle; int done; TYPE_8__ u; int gen2; int gen1; int type; } ;
typedef TYPE_11__ srb_t ;
struct TYPE_28__ {int online; } ;
struct TYPE_26__ {int mgmt_svr_loop_id; TYPE_1__ flags; } ;
typedef TYPE_12__ scsi_qla_host_t ;
struct TYPE_36__ {int al_pa; int area; int domain; } ;
struct TYPE_24__ {TYPE_9__ b; } ;
struct TYPE_31__ {int ct_sns_dma; int ct_sns; } ;
struct TYPE_27__ {int flags; TYPE_10__ d_id; int loop_id; int port_name; TYPE_4__ ct_desc; int fabric_port_name; int login_gen; int rscn_gen; } ;
typedef TYPE_13__ fc_port_t ;


 int FCF_ASYNC_ACTIVE ;
 int FCF_ASYNC_SENT ;
 int GFP_KERNEL ;
 int GPSC_CMD ;
 int GPSC_REQ_SIZE ;
 int GPSC_RSP_SIZE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_CT_PTHRU_CMD ;
 int WWN_SIZE ;
 int memcpy (int ,int ,int ) ;
 int ql_dbg (int ,TYPE_12__*,int,char*,char*,int ,int ,int ,int ,int ,int ) ;
 int ql_dbg_disc ;
 int qla24xx_async_gpsc_sp_done ;
 struct ct_sns_req* qla24xx_prep_ct_fm_req (int ,int ,int ) ;
 int qla2x00_async_iocb_timeout ;
 scalar_t__ qla2x00_get_async_timeout (TYPE_12__*) ;
 TYPE_11__* qla2x00_get_sp (TYPE_12__*,TYPE_13__*,int ) ;
 int qla2x00_init_timer (TYPE_11__*,scalar_t__) ;
 int qla2x00_start_sp (TYPE_11__*) ;
 int stub1 (TYPE_11__*) ;

int qla24xx_async_gpsc(scsi_qla_host_t *vha, fc_port_t *fcport)
{
 int rval = QLA_FUNCTION_FAILED;
 struct ct_sns_req *ct_req;
 srb_t *sp;

 if (!vha->flags.online || (fcport->flags & FCF_ASYNC_SENT))
  return rval;

 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  goto done;

 sp->type = SRB_CT_PTHRU_CMD;
 sp->name = "gpsc";
 sp->gen1 = fcport->rscn_gen;
 sp->gen2 = fcport->login_gen;

 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);


 ct_req = qla24xx_prep_ct_fm_req(fcport->ct_desc.ct_sns, GPSC_CMD,
  GPSC_RSP_SIZE);


 memcpy(ct_req->req.gpsc.port_name, fcport->fabric_port_name,
  WWN_SIZE);

 sp->u.iocb_cmd.u.ctarg.req = fcport->ct_desc.ct_sns;
 sp->u.iocb_cmd.u.ctarg.req_dma = fcport->ct_desc.ct_sns_dma;
 sp->u.iocb_cmd.u.ctarg.rsp = fcport->ct_desc.ct_sns;
 sp->u.iocb_cmd.u.ctarg.rsp_dma = fcport->ct_desc.ct_sns_dma;
 sp->u.iocb_cmd.u.ctarg.req_size = GPSC_REQ_SIZE;
 sp->u.iocb_cmd.u.ctarg.rsp_size = GPSC_RSP_SIZE;
 sp->u.iocb_cmd.u.ctarg.nport_handle = vha->mgmt_svr_loop_id;

 sp->u.iocb_cmd.timeout = qla2x00_async_iocb_timeout;
 sp->done = qla24xx_async_gpsc_sp_done;

 ql_dbg(ql_dbg_disc, vha, 0x205e,
     "Async-%s %8phC hdl=%x loopid=%x portid=%02x%02x%02x.\n",
     sp->name, fcport->port_name, sp->handle,
     fcport->loop_id, fcport->d_id.b.domain,
     fcport->d_id.b.area, fcport->d_id.b.al_pa);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;
 return rval;

done_free_sp:
 sp->free(sp);
 fcport->flags &= ~FCF_ASYNC_SENT;
done:
 fcport->flags &= ~FCF_ASYNC_ACTIVE;
 return rval;
}
