
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf_s {int ioc; } ;


 int IOC_E_DISABLED ;
 int bfa_fsm_send_event (int ,int ) ;
 int bfa_ioc_mbox_flush (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_disabled_entry(struct bfa_iocpf_s *iocpf)
{
 bfa_ioc_mbox_flush(iocpf->ioc);
 bfa_fsm_send_event(iocpf->ioc, IOC_E_DISABLED);
}
