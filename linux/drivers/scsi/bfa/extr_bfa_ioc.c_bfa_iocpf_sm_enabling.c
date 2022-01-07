
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_iocpf_s {struct bfa_ioc_s* ioc; } ;
struct TYPE_2__ {int ioc_sem_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;






 int IOC_E_PFFAILED ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;
 int bfa_fsm_set_state (struct bfa_iocpf_s*,int ) ;
 int bfa_iocpf_sm_disabling ;
 int bfa_iocpf_sm_initfail_sync ;
 int bfa_iocpf_sm_ready ;
 int bfa_iocpf_timer_stop (struct bfa_ioc_s*) ;
 int bfa_sm_fault (struct bfa_ioc_s*,int) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_enabling(struct bfa_iocpf_s *iocpf, enum iocpf_event event)
{
 struct bfa_ioc_s *ioc = iocpf->ioc;

 bfa_trc(ioc, event);

 switch (event) {
 case 130:
  bfa_iocpf_timer_stop(ioc);
  writel(1, ioc->ioc_regs.ioc_sem_reg);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_ready);
  break;

 case 129:
  bfa_iocpf_timer_stop(ioc);


 case 128:
  writel(1, ioc->ioc_regs.ioc_sem_reg);
  if (event == 128)
   bfa_fsm_send_event(ioc, IOC_E_PFFAILED);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_initfail_sync);
  break;

 case 131:
  bfa_iocpf_timer_stop(ioc);
  writel(1, ioc->ioc_regs.ioc_sem_reg);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling);
  break;

 default:
  bfa_sm_fault(ioc, event);
 }
}
