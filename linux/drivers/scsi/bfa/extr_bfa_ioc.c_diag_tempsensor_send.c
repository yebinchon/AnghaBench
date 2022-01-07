
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfi_diag_ts_req_s {int mh; int temp; } ;
struct TYPE_4__ {scalar_t__ msg; } ;
struct TYPE_3__ {TYPE_2__ mbcmd; } ;
struct bfa_diag_s {TYPE_1__ tsensor; int ioc; } ;


 int BFI_DIAG_H2I_TEMPSENSOR ;
 int BFI_MC_DIAG ;
 int bfa_ioc_mbox_queue (int ,TYPE_2__*) ;
 int bfa_ioc_portid (int ) ;
 int bfa_trc (struct bfa_diag_s*,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
diag_tempsensor_send(struct bfa_diag_s *diag)
{
 struct bfi_diag_ts_req_s *msg;

 msg = (struct bfi_diag_ts_req_s *)diag->tsensor.mbcmd.msg;
 bfa_trc(diag, msg->temp);

 bfi_h2i_set(msg->mh, BFI_MC_DIAG, BFI_DIAG_H2I_TEMPSENSOR,
  bfa_ioc_portid(diag->ioc));

 bfa_ioc_mbox_queue(diag->ioc, &diag->tsensor.mbcmd);
}
