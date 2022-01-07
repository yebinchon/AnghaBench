
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int vlan; } ;
struct TYPE_14__ {TYPE_5__ fcf; int qos_vc_attr; } ;
struct TYPE_15__ {TYPE_6__ vc_fcf; int bbcr_attr; int loop_info; } ;
struct TYPE_16__ {TYPE_7__ attr; int fec_state; int qos_attr; int topology; int speed; } ;
struct bfi_fcport_event_s {TYPE_8__ link_state; } ;
struct TYPE_12__ {int state; } ;
struct bfa_fcport_trunk_s {TYPE_4__ attr; } ;
struct TYPE_11__ {int trunked; scalar_t__ bb_cr_enabled; } ;
struct TYPE_9__ {struct bfi_fcport_event_s* event; } ;
struct TYPE_10__ {TYPE_1__ i2hmsg; } ;
struct bfa_fcport_s {int topology; int bfa; int speed; int fcoe_vlan; TYPE_3__ cfg; int fec_state; int bbcr_attr; int qos_vc_attr; int qos_attr; struct bfa_fcport_trunk_s trunk; TYPE_2__ event_arg; } ;


 int BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_TRUNK_DISABLED ;
 int be16_to_cpu (int ) ;
 int bfa_fcport_update_loop_info (struct bfa_fcport_s*,int *) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcport_update_linkinfo(struct bfa_fcport_s *fcport)
{
 struct bfi_fcport_event_s *pevent = fcport->event_arg.i2hmsg.event;
 struct bfa_fcport_trunk_s *trunk = &fcport->trunk;

 fcport->speed = pevent->link_state.speed;
 fcport->topology = pevent->link_state.topology;

 if (fcport->topology == BFA_PORT_TOPOLOGY_LOOP) {
  bfa_fcport_update_loop_info(fcport,
    &pevent->link_state.attr.loop_info);
  return;
 }


 fcport->qos_attr = pevent->link_state.qos_attr;
 fcport->qos_vc_attr = pevent->link_state.attr.vc_fcf.qos_vc_attr;

 if (fcport->cfg.bb_cr_enabled)
  fcport->bbcr_attr = pevent->link_state.attr.bbcr_attr;

 fcport->fec_state = pevent->link_state.fec_state;




 if (!fcport->cfg.trunked)
  trunk->attr.state = BFA_TRUNK_DISABLED;


 fcport->fcoe_vlan =
  be16_to_cpu(pevent->link_state.attr.vc_fcf.fcf.vlan);

 bfa_trc(fcport->bfa, fcport->speed);
 bfa_trc(fcport->bfa, fcport->topology);
}
