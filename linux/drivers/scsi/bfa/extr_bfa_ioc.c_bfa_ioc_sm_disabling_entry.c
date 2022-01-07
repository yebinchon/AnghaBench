
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_ioc_s {int iocpf; TYPE_1__* bfa; } ;
struct TYPE_2__ {scalar_t__ bfad; } ;


 int BFA_IOC_AEN_DISABLE ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*) ;
 int IOCPF_E_DISABLE ;
 int KERN_INFO ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_ioc_aen_post (struct bfa_ioc_s*,int ) ;
 int bfa_log_level ;

__attribute__((used)) static void
bfa_ioc_sm_disabling_entry(struct bfa_ioc_s *ioc)
{
 struct bfad_s *bfad = (struct bfad_s *)ioc->bfa->bfad;
 bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_DISABLE);
 BFA_LOG(KERN_INFO, bfad, bfa_log_level, "IOC disabled\n");
 bfa_ioc_aen_post(ioc, BFA_IOC_AEN_DISABLE);
}
