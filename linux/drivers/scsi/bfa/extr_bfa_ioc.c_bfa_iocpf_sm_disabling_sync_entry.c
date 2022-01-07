
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf_s {int ioc; } ;


 int bfa_ioc_hw_sem_get (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_disabling_sync_entry(struct bfa_iocpf_s *iocpf)
{
 bfa_ioc_hw_sem_get(iocpf->ioc);
}
