
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {int iotag; int bfa; TYPE_1__* fcpim; int qe; } ;
typedef enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {int ioim_resfree_q; } ;






 int bfa_ioim_notify_cleanup (struct bfa_ioim_s*) ;
 int bfa_ioim_sm_hcb ;
 int bfa_ioim_sm_resfree ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_ioim_s*,int ) ;
 int bfa_trc (int ,int) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_ioim_sm_hcb_free(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_trc(ioim->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(ioim, bfa_ioim_sm_resfree);
  list_del(&ioim->qe);
  list_add_tail(&ioim->qe, &ioim->fcpim->ioim_resfree_q);
  break;

 case 130:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  break;

 case 131:
  bfa_ioim_notify_cleanup(ioim);
  break;

 case 128:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  break;

 default:
  bfa_sm_fault(ioim->bfa, event);
 }
}
