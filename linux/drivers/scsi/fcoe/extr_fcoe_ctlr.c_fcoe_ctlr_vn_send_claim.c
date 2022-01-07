
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {int sol_time; } ;


 int FIP_SC_VN_CLAIM_NOTIFY ;
 int fcoe_all_vn2vn ;
 int fcoe_ctlr_vn_send (struct fcoe_ctlr*,int ,int ,int ) ;
 int jiffies ;

__attribute__((used)) static void fcoe_ctlr_vn_send_claim(struct fcoe_ctlr *fip)
{
 fcoe_ctlr_vn_send(fip, FIP_SC_VN_CLAIM_NOTIFY, fcoe_all_vn2vn, 0);
 fip->sol_time = jiffies;
}
