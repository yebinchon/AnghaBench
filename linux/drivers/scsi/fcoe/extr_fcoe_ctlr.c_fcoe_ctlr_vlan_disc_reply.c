
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_rport {int enode_mac; } ;
struct fcoe_ctlr {scalar_t__ mode; } ;
typedef enum fip_vlan_subcode { ____Placeholder_fip_vlan_subcode } fip_vlan_subcode ;


 scalar_t__ FIP_MODE_VN2VN ;
 int FIP_SC_VL_NOTE ;
 int FIP_SC_VL_VN2VN_NOTE ;
 int fcoe_ctlr_vlan_send (struct fcoe_ctlr*,int,int ) ;

__attribute__((used)) static void fcoe_ctlr_vlan_disc_reply(struct fcoe_ctlr *fip,
          struct fcoe_rport *frport)
{
 enum fip_vlan_subcode sub = FIP_SC_VL_NOTE;

 if (fip->mode == FIP_MODE_VN2VN)
  sub = FIP_SC_VL_VN2VN_NOTE;

 fcoe_ctlr_vlan_send(fip, sub, frport->enode_mac);
}
