
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fcoe_port {struct fcoe_interface* priv; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;


 scalar_t__ ELS_FLOGI ;
 scalar_t__ fc_frame_payload_op (struct fc_frame*) ;
 int fcoe_ctlr_recv_flogi (struct fcoe_ctlr*,struct fc_lport*,struct fc_frame*) ;
 struct fcoe_ctlr* fcoe_to_ctlr (struct fcoe_interface*) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;

__attribute__((used)) static void fcoe_set_port_id(struct fc_lport *lport,
        u32 port_id, struct fc_frame *fp)
{
 struct fcoe_port *port = lport_priv(lport);
 struct fcoe_interface *fcoe = port->priv;
 struct fcoe_ctlr *ctlr = fcoe_to_ctlr(fcoe);

 if (fp && fc_frame_payload_op(fp) == ELS_FLOGI)
  fcoe_ctlr_recv_flogi(ctlr, lport, fp);
}
