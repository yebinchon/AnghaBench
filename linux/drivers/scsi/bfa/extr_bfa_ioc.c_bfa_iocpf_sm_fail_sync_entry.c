
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf_s {int ioc; } ;


 int bfa_ioc_hw_sem_get (int ) ;
 int bfa_ioc_lpu_stop (int ) ;
 int bfa_ioc_mbox_flush (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_fail_sync_entry(struct bfa_iocpf_s *iocpf)
{



 bfa_ioc_lpu_stop(iocpf->ioc);




 bfa_ioc_mbox_flush(iocpf->ioc);

 bfa_ioc_hw_sem_get(iocpf->ioc);
}
