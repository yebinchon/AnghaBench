
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bfi_diag_portbeacon_req_s {int period; int beacon; int mh; } ;
struct TYPE_4__ {scalar_t__ msg; } ;
struct TYPE_3__ {TYPE_2__ mbcmd; } ;
struct bfa_diag_s {TYPE_1__ beacon; int ioc; } ;
typedef int bfa_boolean_t ;


 int BFI_DIAG_H2I_PORTBEACON ;
 int BFI_MC_DIAG ;
 int bfa_ioc_mbox_queue (int ,TYPE_2__*) ;
 int bfa_ioc_portid (int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void
diag_portbeacon_send(struct bfa_diag_s *diag, bfa_boolean_t beacon, u32 sec)
{
 struct bfi_diag_portbeacon_req_s *msg;

 msg = (struct bfi_diag_portbeacon_req_s *)diag->beacon.mbcmd.msg;

 bfi_h2i_set(msg->mh, BFI_MC_DIAG, BFI_DIAG_H2I_PORTBEACON,
  bfa_ioc_portid(diag->ioc));
 msg->beacon = beacon;
 msg->period = cpu_to_be32(sec);

 bfa_ioc_mbox_queue(diag->ioc, &diag->beacon.mbcmd);
}
