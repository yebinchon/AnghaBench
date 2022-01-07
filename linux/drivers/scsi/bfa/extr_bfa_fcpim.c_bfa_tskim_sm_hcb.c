
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_tskim_s {int tsk_tag; int bfa; } ;
typedef enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;





 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_tskim_s*,int ) ;
 int bfa_trc (int ,int) ;
 int bfa_tskim_free (struct bfa_tskim_s*) ;
 int bfa_tskim_notify_comp (struct bfa_tskim_s*) ;
 int bfa_tskim_sm_uninit ;

__attribute__((used)) static void
bfa_tskim_sm_hcb(struct bfa_tskim_s *tskim, enum bfa_tskim_event event)
{
 bfa_trc(tskim->bfa, tskim->tsk_tag << 16 | event);

 switch (event) {
 case 129:
  bfa_sm_set_state(tskim, bfa_tskim_sm_uninit);
  bfa_tskim_free(tskim);
  break;

 case 130:
  bfa_tskim_notify_comp(tskim);
  break;

 case 128:
  break;

 default:
  bfa_sm_fault(tskim->bfa, event);
 }
}
