
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_17__ {int flags; } ;
struct TYPE_18__ {TYPE_3__ logio; } ;
struct srb_iocb {TYPE_4__ u; int timeout; } ;
struct TYPE_15__ {int online; } ;
struct scsi_qla_host {TYPE_1__ flags; } ;
struct TYPE_16__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_20__ {char* name; int (* free ) (TYPE_6__*) ;int handle; int done; int gen2; int gen1; TYPE_2__ u; int type; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_19__ {int b24; } ;
struct TYPE_21__ {int flags; int port_name; TYPE_5__ d_id; int loop_id; int login_gen; int rscn_gen; } ;
typedef TYPE_7__ fc_port_t ;


 int FCF_ASYNC_ACTIVE ;
 int FCF_ASYNC_SENT ;
 int GFP_KERNEL ;
 int QLA_FUNCTION_FAILED ;
 int QLA_LOGIO_LOGIN_RETRIED ;
 int QLA_SUCCESS ;
 int SRB_ADISC_CMD ;
 int SRB_LOGIN_RETRIED ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int ) ;
 int ql_dbg_disc ;
 int qla2x00_async_adisc_sp_done ;
 int qla2x00_async_iocb_timeout ;
 scalar_t__ qla2x00_get_async_timeout (struct scsi_qla_host*) ;
 TYPE_6__* qla2x00_get_sp (struct scsi_qla_host*,TYPE_7__*,int ) ;
 int qla2x00_init_timer (TYPE_6__*,scalar_t__) ;
 int qla2x00_post_async_adisc_work (struct scsi_qla_host*,TYPE_7__*,int*) ;
 int qla2x00_start_sp (TYPE_6__*) ;
 int stub1 (TYPE_6__*) ;

int
qla2x00_async_adisc(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
 srb_t *sp;
 struct srb_iocb *lio;
 int rval = QLA_FUNCTION_FAILED;

 if (!vha->flags.online || (fcport->flags & FCF_ASYNC_SENT))
  return rval;

 fcport->flags |= FCF_ASYNC_SENT;
 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  goto done;

 sp->type = SRB_ADISC_CMD;
 sp->name = "adisc";

 lio = &sp->u.iocb_cmd;
 lio->timeout = qla2x00_async_iocb_timeout;
 sp->gen1 = fcport->rscn_gen;
 sp->gen2 = fcport->login_gen;
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);

 sp->done = qla2x00_async_adisc_sp_done;
 if (data[1] & QLA_LOGIO_LOGIN_RETRIED)
  lio->u.logio.flags |= SRB_LOGIN_RETRIED;

 ql_dbg(ql_dbg_disc, vha, 0x206f,
     "Async-adisc - hdl=%x loopid=%x portid=%06x %8phC.\n",
     sp->handle, fcport->loop_id, fcport->d_id.b24, fcport->port_name);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;

 return rval;

done_free_sp:
 sp->free(sp);
done:
 fcport->flags &= ~(FCF_ASYNC_SENT | FCF_ASYNC_ACTIVE);
 qla2x00_post_async_adisc_work(vha, fcport, data);
 return rval;
}
