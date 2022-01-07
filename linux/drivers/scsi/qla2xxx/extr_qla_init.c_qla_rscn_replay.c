
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rsvd_1; } ;
struct TYPE_6__ {TYPE_1__ b; } ;
struct event_arg {TYPE_2__ id; } ;
struct TYPE_7__ {int disc_state; int vha; TYPE_2__ d_id; scalar_t__ scan_needed; } ;
typedef TYPE_3__ fc_port_t ;
typedef int ea ;



 int RSCN_PORT_ADDR ;
 int memset (struct event_arg*,int ,int) ;
 int qla2x00_handle_rscn (int ,struct event_arg*) ;

void qla_rscn_replay(fc_port_t *fcport)
{
 struct event_arg ea;

 switch (fcport->disc_state) {
 case 128:
  return;
 default:
  break;
 }

 if (fcport->scan_needed) {
  memset(&ea, 0, sizeof(ea));
  ea.id = fcport->d_id;
  ea.id.b.rsvd_1 = RSCN_PORT_ADDR;
  qla2x00_handle_rscn(fcport->vha, &ea);
 }
}
