
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port_id; } ;
struct TYPE_4__ {TYPE_1__ ids; } ;
struct fcoe_rport {TYPE_2__ rdata; } ;
struct fcoe_ctlr {scalar_t__ state; } ;


 scalar_t__ FIP_ST_VNMP_CLAIM ;
 scalar_t__ FIP_ST_VNMP_UP ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,int ,int ) ;
 int fcoe_ctlr_state (scalar_t__) ;
 int fcoe_ctlr_vn_add (struct fcoe_ctlr*,struct fcoe_rport*) ;

__attribute__((used)) static void fcoe_ctlr_vn_claim_resp(struct fcoe_ctlr *fip,
        struct fcoe_rport *new)
{
 LIBFCOE_FIP_DBG(fip, "claim resp from from rport %x - state %s\n",
   new->rdata.ids.port_id, fcoe_ctlr_state(fip->state));
 if (fip->state == FIP_ST_VNMP_UP || fip->state == FIP_ST_VNMP_CLAIM)
  fcoe_ctlr_vn_add(fip, new);
}
