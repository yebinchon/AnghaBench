
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvecs; } ;
struct bfa_s {TYPE_1__ msix; } ;


 int WARN_ON (int) ;
 int __HFN_NUMINTS ;
 int bfa_hwcb_msix_uninstall (struct bfa_s*) ;

void
bfa_hwcb_msix_init(struct bfa_s *bfa, int nvecs)
{
 WARN_ON((nvecs != 1) && (nvecs != __HFN_NUMINTS));

 bfa->msix.nvecs = nvecs;
 bfa_hwcb_msix_uninstall(bfa);
}
