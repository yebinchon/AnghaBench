
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_timer_mod_s {int dummy; } ;
struct TYPE_2__ {struct bfa_ioc_s* ioc; } ;
struct bfa_ioc_s {int notify_q; TYPE_1__ iocpf; int dbg_fwsave_once; void* pllinit; void* fcmode; struct bfa_timer_mod_s* timer_mod; struct bfa_ioc_cbfn_s* cbfn; void* bfa; } ;
struct bfa_ioc_cbfn_s {int dummy; } ;


 void* BFA_FALSE ;
 int BFA_TRUE ;
 int INIT_LIST_HEAD (int *) ;
 int IOC_E_RESET ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;
 int bfa_fsm_set_state (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_mbox_attach (struct bfa_ioc_s*) ;
 int bfa_ioc_sm_uninit ;

void
bfa_ioc_attach(struct bfa_ioc_s *ioc, void *bfa, struct bfa_ioc_cbfn_s *cbfn,
        struct bfa_timer_mod_s *timer_mod)
{
 ioc->bfa = bfa;
 ioc->cbfn = cbfn;
 ioc->timer_mod = timer_mod;
 ioc->fcmode = BFA_FALSE;
 ioc->pllinit = BFA_FALSE;
 ioc->dbg_fwsave_once = BFA_TRUE;
 ioc->iocpf.ioc = ioc;

 bfa_ioc_mbox_attach(ioc);
 INIT_LIST_HEAD(&ioc->notify_q);

 bfa_fsm_set_state(ioc, bfa_ioc_sm_uninit);
 bfa_fsm_send_event(ioc, IOC_E_RESET);
}
