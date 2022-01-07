
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_trc_mod_s {int dummy; } ;
struct bfa_ioc_s {int notify_q; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_diag_s {struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; int cbfn_beacon; int * result; int * cbarg; int * cbfn; scalar_t__ block; struct bfa_trc_mod_s* trcmod; void* dev; } ;
typedef int bfa_cb_diag_beacon_t ;


 int BFI_MC_DIAG ;
 int bfa_diag_intr ;
 int bfa_diag_notify ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_diag_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_diag_s*) ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;

void
bfa_diag_attach(struct bfa_diag_s *diag, struct bfa_ioc_s *ioc, void *dev,
 bfa_cb_diag_beacon_t cbfn_beacon, struct bfa_trc_mod_s *trcmod)
{
 diag->dev = dev;
 diag->ioc = ioc;
 diag->trcmod = trcmod;

 diag->block = 0;
 diag->cbfn = ((void*)0);
 diag->cbarg = ((void*)0);
 diag->result = ((void*)0);
 diag->cbfn_beacon = cbfn_beacon;

 bfa_ioc_mbox_regisr(diag->ioc, BFI_MC_DIAG, bfa_diag_intr, diag);
 bfa_q_qe_init(&diag->ioc_notify);
 bfa_ioc_notify_init(&diag->ioc_notify, bfa_diag_notify, diag);
 list_add_tail(&diag->ioc_notify.qe, &diag->ioc->notify_q);
}
