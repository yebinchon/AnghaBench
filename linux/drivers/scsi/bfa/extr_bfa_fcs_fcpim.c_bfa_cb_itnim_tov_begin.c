
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_itnim_s {TYPE_1__* rport; int fcs; } ;
struct TYPE_2__ {int pwwn; } ;


 int bfa_trc (int ,int ) ;

void
bfa_cb_itnim_tov_begin(void *cb_arg)
{
 struct bfa_fcs_itnim_s *itnim = (struct bfa_fcs_itnim_s *) cb_arg;

 bfa_trc(itnim->fcs, itnim->rport->pwwn);
}
