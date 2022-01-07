
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_mbox_mod_s {TYPE_1__* mbhdlr; } ;
struct bfa_ioc_s {struct bfa_ioc_mbox_mod_s mbox_mod; } ;
typedef enum bfi_mclass { ____Placeholder_bfi_mclass } bfi_mclass ;
typedef int bfa_ioc_mbox_mcfunc_t ;
struct TYPE_2__ {void* cbarg; int cbfn; } ;



void
bfa_ioc_mbox_regisr(struct bfa_ioc_s *ioc, enum bfi_mclass mc,
      bfa_ioc_mbox_mcfunc_t cbfn, void *cbarg)
{
 struct bfa_ioc_mbox_mod_s *mod = &ioc->mbox_mod;

 mod->mbhdlr[mc].cbfn = cbfn;
 mod->mbhdlr[mc].cbarg = cbarg;
}
