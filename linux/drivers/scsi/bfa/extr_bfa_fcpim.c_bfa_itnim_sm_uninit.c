
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_itnim_s {int bfa; int is_online; TYPE_1__* rport; } ;
typedef enum bfa_itnim_event { ____Placeholder_bfa_itnim_event } bfa_itnim_event ;
struct TYPE_2__ {int rport_tag; } ;


 int BFA_FALSE ;

 int bfa_fcpim_additn (struct bfa_itnim_s*) ;
 int bfa_itnim_sm_created ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_itnim_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_itnim_sm_uninit(struct bfa_itnim_s *itnim, enum bfa_itnim_event event)
{
 bfa_trc(itnim->bfa, itnim->rport->rport_tag);
 bfa_trc(itnim->bfa, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(itnim, bfa_itnim_sm_created);
  itnim->is_online = BFA_FALSE;
  bfa_fcpim_additn(itnim);
  break;

 default:
  bfa_sm_fault(itnim->bfa, event);
 }
}
