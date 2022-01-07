
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sfp_s {int (* cbfn ) (int ,int ) ;scalar_t__ lock; int status; int cbarg; } ;


 int bfa_trc (struct bfa_sfp_s*,scalar_t__) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_cb_sfp_show(struct bfa_sfp_s *sfp)
{
 bfa_trc(sfp, sfp->lock);
 if (sfp->cbfn)
  sfp->cbfn(sfp->cbarg, sfp->status);
 sfp->lock = 0;
 sfp->cbfn = ((void*)0);
}
