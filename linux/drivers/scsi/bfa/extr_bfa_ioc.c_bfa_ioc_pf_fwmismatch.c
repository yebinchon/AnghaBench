
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_ioc_s {TYPE_2__* bfa; TYPE_1__* cbfn; } ;
struct TYPE_4__ {scalar_t__ bfad; } ;
struct TYPE_3__ {int (* enable_cbfn ) (TYPE_2__*,int ) ;} ;


 int BFA_IOC_AEN_FWMISMATCH ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*) ;
 int BFA_STATUS_IOC_FAILURE ;
 int KERN_WARNING ;
 int bfa_ioc_aen_post (struct bfa_ioc_s*,int ) ;
 int bfa_log_level ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void
bfa_ioc_pf_fwmismatch(struct bfa_ioc_s *ioc)
{
 struct bfad_s *bfad = (struct bfad_s *)ioc->bfa->bfad;



 ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
 BFA_LOG(KERN_WARNING, bfad, bfa_log_level,
  "Running firmware version is incompatible "
  "with the driver version\n");
 bfa_ioc_aen_post(ioc, BFA_IOC_AEN_FWMISMATCH);
}
