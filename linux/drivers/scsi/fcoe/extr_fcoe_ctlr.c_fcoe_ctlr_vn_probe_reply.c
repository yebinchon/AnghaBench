
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ port_id; } ;
struct TYPE_4__ {TYPE_1__ ids; } ;
struct fcoe_rport {TYPE_2__ rdata; } ;
struct fcoe_ctlr {scalar_t__ port_id; int state; } ;







 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,...) ;
 int fcoe_ctlr_vn_restart (struct fcoe_ctlr*) ;
 int fcoe_ctlr_vn_send_claim (struct fcoe_ctlr*) ;

__attribute__((used)) static void fcoe_ctlr_vn_probe_reply(struct fcoe_ctlr *fip,
         struct fcoe_rport *frport)
{
 if (frport->rdata.ids.port_id != fip->port_id)
  return;
 switch (fip->state) {
 case 129:
 case 131:
 case 130:
 case 132:
  LIBFCOE_FIP_DBG(fip, "vn_probe_reply: restart state %x\n",
    fip->state);
  fcoe_ctlr_vn_restart(fip);
  break;
 case 128:
  LIBFCOE_FIP_DBG(fip, "vn_probe_reply: send claim notify\n");
  fcoe_ctlr_vn_send_claim(fip);
  break;
 default:
  break;
 }
}
