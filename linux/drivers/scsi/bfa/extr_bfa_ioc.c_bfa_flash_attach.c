
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_trc_mod_s {int dummy; } ;
struct bfa_ioc_s {int notify_q; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_flash_s {scalar_t__ dbuf_pa; int * dbuf_kva; struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; scalar_t__ op_busy; int * cbarg; int * cbfn; struct bfa_trc_mod_s* trcmod; } ;
typedef scalar_t__ bfa_boolean_t ;


 int BFI_MC_FLASH ;
 int bfa_flash_intr ;
 int bfa_flash_notify ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_flash_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_flash_s*) ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;

void
bfa_flash_attach(struct bfa_flash_s *flash, struct bfa_ioc_s *ioc, void *dev,
  struct bfa_trc_mod_s *trcmod, bfa_boolean_t mincfg)
{
 flash->ioc = ioc;
 flash->trcmod = trcmod;
 flash->cbfn = ((void*)0);
 flash->cbarg = ((void*)0);
 flash->op_busy = 0;

 bfa_ioc_mbox_regisr(flash->ioc, BFI_MC_FLASH, bfa_flash_intr, flash);
 bfa_q_qe_init(&flash->ioc_notify);
 bfa_ioc_notify_init(&flash->ioc_notify, bfa_flash_notify, flash);
 list_add_tail(&flash->ioc_notify.qe, &flash->ioc->notify_q);


 if (mincfg) {
  flash->dbuf_kva = ((void*)0);
  flash->dbuf_pa = 0;
 }
}
