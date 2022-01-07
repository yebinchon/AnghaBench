
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf_s {scalar_t__ fw_mismatch_notified; int ioc; } ;


 scalar_t__ BFA_FALSE ;
 scalar_t__ BFA_TRUE ;
 int bfa_ioc_pf_fwmismatch (int ) ;
 int bfa_iocpf_timer_start (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_mismatch_entry(struct bfa_iocpf_s *iocpf)
{



 if (iocpf->fw_mismatch_notified == BFA_FALSE)
  bfa_ioc_pf_fwmismatch(iocpf->ioc);

 iocpf->fw_mismatch_notified = BFA_TRUE;
 bfa_iocpf_timer_start(iocpf->ioc);
}
