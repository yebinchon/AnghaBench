
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_4__ {int flags; int login_gen; } ;
typedef TYPE_1__ fc_port_t ;


 int FCF_ASYNC_ACTIVE ;
 int qlt_logo_completion_handler (TYPE_1__*,int ) ;

void
qla2x00_async_logout_done(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
 qlt_logo_completion_handler(fcport, data[0]);
 fcport->login_gen++;
 fcport->flags &= ~FCF_ASYNC_ACTIVE;
 return;
}
