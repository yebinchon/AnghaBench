
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int iocpf; } ;


 int bfa_fsm_set_state (int *,int ) ;
 int bfa_iocpf_sm_reset ;

__attribute__((used)) static void
bfa_ioc_sm_reset_entry(struct bfa_ioc_s *ioc)
{
 bfa_fsm_set_state(&ioc->iocpf, bfa_iocpf_sm_reset);
}
