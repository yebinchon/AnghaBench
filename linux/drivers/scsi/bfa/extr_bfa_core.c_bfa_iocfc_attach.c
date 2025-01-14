
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* submod_enabled; int op_status; void* cb_reqd; } ;
struct TYPE_6__ {int timer_q; } ;
struct bfa_ioc_s {int trcmod; } ;
struct bfa_s {TYPE_4__ iocfc; int * reqq_waitq; int comp_q; TYPE_3__ timer_mod; struct bfa_ioc_s ioc; int trcmod; } ;
struct bfa_pcidev_s {int dummy; } ;
struct bfa_iocfc_cfg_s {int dummy; } ;
struct TYPE_5__ {int reset_cbfn; int hbfail_cbfn; int disable_cbfn; int enable_cbfn; } ;


 void* BFA_FALSE ;
 int BFA_STATUS_OK ;
 int BFI_IOC_MAX_CQS ;
 int BFI_PCIFN_CLASS_FC ;
 int INIT_LIST_HEAD (int *) ;
 int bfa_fsm_set_state (TYPE_4__*,int ) ;
 int bfa_ioc_attach (struct bfa_ioc_s*,struct bfa_s*,TYPE_1__*,TYPE_3__*) ;
 int bfa_ioc_mbox_register (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_pci_init (struct bfa_ioc_s*,struct bfa_pcidev_s*,int ) ;
 TYPE_1__ bfa_iocfc_cbfn ;
 int bfa_iocfc_disable_cbfn ;
 int bfa_iocfc_enable_cbfn ;
 int bfa_iocfc_hbfail_cbfn ;
 int bfa_iocfc_init_mem (struct bfa_s*,void*,struct bfa_iocfc_cfg_s*,struct bfa_pcidev_s*) ;
 int bfa_iocfc_mem_claim (struct bfa_s*,struct bfa_iocfc_cfg_s*) ;
 int bfa_iocfc_reset_cbfn ;
 int bfa_iocfc_sm_stopped ;
 int bfa_mbox_isrs ;

void
bfa_iocfc_attach(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
   struct bfa_pcidev_s *pcidev)
{
 int i;
 struct bfa_ioc_s *ioc = &bfa->ioc;

 bfa_iocfc_cbfn.enable_cbfn = bfa_iocfc_enable_cbfn;
 bfa_iocfc_cbfn.disable_cbfn = bfa_iocfc_disable_cbfn;
 bfa_iocfc_cbfn.hbfail_cbfn = bfa_iocfc_hbfail_cbfn;
 bfa_iocfc_cbfn.reset_cbfn = bfa_iocfc_reset_cbfn;

 ioc->trcmod = bfa->trcmod;
 bfa_ioc_attach(&bfa->ioc, bfa, &bfa_iocfc_cbfn, &bfa->timer_mod);

 bfa_ioc_pci_init(&bfa->ioc, pcidev, BFI_PCIFN_CLASS_FC);
 bfa_ioc_mbox_register(&bfa->ioc, bfa_mbox_isrs);

 bfa_iocfc_init_mem(bfa, bfad, cfg, pcidev);
 bfa_iocfc_mem_claim(bfa, cfg);
 INIT_LIST_HEAD(&bfa->timer_mod.timer_q);

 INIT_LIST_HEAD(&bfa->comp_q);
 for (i = 0; i < BFI_IOC_MAX_CQS; i++)
  INIT_LIST_HEAD(&bfa->reqq_waitq[i]);

 bfa->iocfc.cb_reqd = BFA_FALSE;
 bfa->iocfc.op_status = BFA_STATUS_OK;
 bfa->iocfc.submod_enabled = BFA_FALSE;

 bfa_fsm_set_state(&bfa->iocfc, bfa_iocfc_sm_stopped);
}
