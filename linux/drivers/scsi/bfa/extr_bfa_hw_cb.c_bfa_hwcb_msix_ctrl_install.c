
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvecs; int * handler; } ;
struct bfa_s {TYPE_1__ msix; } ;


 int BFI_MSIX_CB_MAX ;
 int BFI_MSIX_CPE_QMIN_CB ;
 int BFI_MSIX_RME_QMAX_CB ;
 int bfa_msix_all ;
 int bfa_msix_lpu_err ;

void
bfa_hwcb_msix_ctrl_install(struct bfa_s *bfa)
{
 int i;

 if (bfa->msix.nvecs == 0)
  return;

 if (bfa->msix.nvecs == 1) {
  for (i = BFI_MSIX_CPE_QMIN_CB; i < BFI_MSIX_CB_MAX; i++)
   bfa->msix.handler[i] = bfa_msix_all;
  return;
 }

 for (i = BFI_MSIX_RME_QMAX_CB+1; i < BFI_MSIX_CB_MAX; i++)
  bfa->msix.handler[i] = bfa_msix_lpu_err;
}
