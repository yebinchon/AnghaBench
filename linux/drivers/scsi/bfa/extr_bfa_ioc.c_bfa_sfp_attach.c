
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_trc_mod_s {int dummy; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_sfp_s {struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; int is_elb; int portspeed; int * media; int * state_query_cbarg; int * state_query_cbfn; scalar_t__ state_query_lock; int state; scalar_t__ data_valid; scalar_t__ lock; int * sfpmem; int * cbarg; int * cbfn; struct bfa_trc_mod_s* trcmod; void* dev; } ;
struct bfa_ioc_s {int notify_q; } ;


 int BFA_FALSE ;
 int BFA_PORT_SPEED_UNKNOWN ;
 int BFA_SFP_STATE_INIT ;
 int BFI_MC_SFP ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_sfp_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_sfp_s*) ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int bfa_sfp_intr ;
 int bfa_sfp_notify ;
 int list_add_tail (int *,int *) ;

void
bfa_sfp_attach(struct bfa_sfp_s *sfp, struct bfa_ioc_s *ioc, void *dev,
  struct bfa_trc_mod_s *trcmod)
{
 sfp->dev = dev;
 sfp->ioc = ioc;
 sfp->trcmod = trcmod;

 sfp->cbfn = ((void*)0);
 sfp->cbarg = ((void*)0);
 sfp->sfpmem = ((void*)0);
 sfp->lock = 0;
 sfp->data_valid = 0;
 sfp->state = BFA_SFP_STATE_INIT;
 sfp->state_query_lock = 0;
 sfp->state_query_cbfn = ((void*)0);
 sfp->state_query_cbarg = ((void*)0);
 sfp->media = ((void*)0);
 sfp->portspeed = BFA_PORT_SPEED_UNKNOWN;
 sfp->is_elb = BFA_FALSE;

 bfa_ioc_mbox_regisr(sfp->ioc, BFI_MC_SFP, bfa_sfp_intr, sfp);
 bfa_q_qe_init(&sfp->ioc_notify);
 bfa_ioc_notify_init(&sfp->ioc_notify, bfa_sfp_notify, sfp);
 list_add_tail(&sfp->ioc_notify.qe, &sfp->ioc->notify_q);
}
