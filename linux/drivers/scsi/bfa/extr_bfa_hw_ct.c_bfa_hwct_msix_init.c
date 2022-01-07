
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvecs; } ;
struct bfa_s {TYPE_1__ msix; } ;


 int BFI_MSIX_CT_MAX ;
 int WARN_ON (int) ;
 int bfa_hwct_msix_uninstall (struct bfa_s*) ;
 int bfa_trc (struct bfa_s*,int) ;

void
bfa_hwct_msix_init(struct bfa_s *bfa, int nvecs)
{
 WARN_ON((nvecs != 1) && (nvecs != BFI_MSIX_CT_MAX));
 bfa_trc(bfa, nvecs);

 bfa->msix.nvecs = nvecs;
 bfa_hwct_msix_uninstall(bfa);
}
