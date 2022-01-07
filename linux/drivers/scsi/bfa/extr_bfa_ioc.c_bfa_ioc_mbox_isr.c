
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int msg_class; } ;
struct bfi_mbmsg_s {TYPE_2__ mh; } ;
struct bfa_ioc_mbox_mod_s {TYPE_1__* mbhdlr; } ;
struct bfa_ioc_s {struct bfa_ioc_mbox_mod_s mbox_mod; } ;
struct TYPE_3__ {int cbarg; int (* cbfn ) (int ,struct bfi_mbmsg_s*) ;} ;


 int BFI_MC_IOC ;
 int BFI_MC_MAX ;
 int bfa_ioc_isr (struct bfa_ioc_s*,struct bfi_mbmsg_s*) ;
 int bfa_ioc_lpu_read_stat (struct bfa_ioc_s*) ;
 int bfa_ioc_mbox_poll (struct bfa_ioc_s*) ;
 scalar_t__ bfa_ioc_msgget (struct bfa_ioc_s*,struct bfi_mbmsg_s*) ;
 int stub1 (int ,struct bfi_mbmsg_s*) ;

void
bfa_ioc_mbox_isr(struct bfa_ioc_s *ioc)
{
 struct bfa_ioc_mbox_mod_s *mod = &ioc->mbox_mod;
 struct bfi_mbmsg_s m;
 int mc;

 if (bfa_ioc_msgget(ioc, &m)) {



  mc = m.mh.msg_class;
  if (mc == BFI_MC_IOC) {
   bfa_ioc_isr(ioc, &m);
   return;
  }

  if ((mc >= BFI_MC_MAX) || (mod->mbhdlr[mc].cbfn == ((void*)0)))
   return;

  mod->mbhdlr[mc].cbfn(mod->mbhdlr[mc].cbarg, &m);
 }

 bfa_ioc_lpu_read_stat(ioc);




 bfa_ioc_mbox_poll(ioc);
}
