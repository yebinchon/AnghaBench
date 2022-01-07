
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int iocfc; int queue_process; } ;


 int BFA_FALSE ;
 int IOCFC_E_IOC_FAILED ;
 int bfa_fsm_send_event (int *,int ) ;

__attribute__((used)) static void
bfa_iocfc_hbfail_cbfn(void *bfa_arg)
{
 struct bfa_s *bfa = bfa_arg;

 bfa->queue_process = BFA_FALSE;
 bfa_fsm_send_event(&bfa->iocfc, IOCFC_E_IOC_FAILED);
}
