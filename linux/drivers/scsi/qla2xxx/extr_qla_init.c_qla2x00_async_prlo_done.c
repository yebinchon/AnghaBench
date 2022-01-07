
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_5__ {int tgt_session; int flags; } ;
typedef TYPE_1__ fc_port_t ;


 int FCF_ASYNC_ACTIVE ;
 int qla2x00_mark_device_lost (struct scsi_qla_host*,TYPE_1__*,int,int ) ;
 int qlt_logo_completion_handler (TYPE_1__*,int ) ;

void
qla2x00_async_prlo_done(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
 fcport->flags &= ~FCF_ASYNC_ACTIVE;

 if (!fcport->tgt_session)
  qla2x00_mark_device_lost(vha, fcport, 1, 0);
 qlt_logo_completion_handler(fcport, data[0]);
}
