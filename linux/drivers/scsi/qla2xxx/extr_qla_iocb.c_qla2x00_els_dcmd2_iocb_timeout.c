
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int hardware_lock; TYPE_2__* isp_ops; } ;
struct TYPE_9__ {int (* done ) (TYPE_3__*,int ) ;int handle; int name; struct scsi_qla_host* vha; TYPE_4__* fcport; } ;
typedef TYPE_3__ srb_t ;
struct TYPE_7__ {int b24; } ;
struct TYPE_10__ {TYPE_1__ d_id; int port_name; } ;
typedef TYPE_4__ fc_port_t ;
struct TYPE_8__ {int (* abort_command ) (TYPE_3__*) ;} ;


 int QLA_FUNCTION_TIMEOUT ;
 int QLA_SUCCESS ;
 int ql_dbg (scalar_t__,struct scsi_qla_host*,int,char*,char*,...) ;
 scalar_t__ ql_dbg_disc ;
 scalar_t__ ql_dbg_io ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*,int ) ;

__attribute__((used)) static void
qla2x00_els_dcmd2_iocb_timeout(void *data)
{
 srb_t *sp = data;
 fc_port_t *fcport = sp->fcport;
 struct scsi_qla_host *vha = sp->vha;
 struct qla_hw_data *ha = vha->hw;
 unsigned long flags = 0;
 int res;

 ql_dbg(ql_dbg_io + ql_dbg_disc, vha, 0x3069,
     "%s hdl=%x ELS Timeout, %8phC portid=%06x\n",
     sp->name, sp->handle, fcport->port_name, fcport->d_id.b24);


 spin_lock_irqsave(&ha->hardware_lock, flags);
 res = ha->isp_ops->abort_command(sp);
 ql_dbg(ql_dbg_io, vha, 0x3070,
     "mbx abort_command %s\n",
     (res == QLA_SUCCESS) ? "successful" : "failed");
 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 sp->done(sp, QLA_FUNCTION_TIMEOUT);
}
