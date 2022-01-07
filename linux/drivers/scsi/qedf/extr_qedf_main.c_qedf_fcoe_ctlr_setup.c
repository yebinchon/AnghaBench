
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctl_src_addr; int get_src_addr; int send; } ;
struct qedf_ctx {int mac; TYPE_1__ ctlr; } ;


 int FIP_MODE_AUTO ;
 int ether_addr_copy (int ,int ) ;
 int fcoe_ctlr_init (TYPE_1__*,int ) ;
 int qedf_fip_send ;
 int qedf_get_src_mac ;

__attribute__((used)) static void qedf_fcoe_ctlr_setup(struct qedf_ctx *qedf)
{
 fcoe_ctlr_init(&qedf->ctlr, FIP_MODE_AUTO);

 qedf->ctlr.send = qedf_fip_send;
 qedf->ctlr.get_src_addr = qedf_get_src_mac;
 ether_addr_copy(qedf->ctlr.ctl_src_addr, qedf->mac);
}
