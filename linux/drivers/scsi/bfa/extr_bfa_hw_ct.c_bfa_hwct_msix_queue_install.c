
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvecs; int * handler; } ;
struct bfa_s {TYPE_1__ msix; } ;


 int BFI_MSIX_CPE_QMAX_CT ;
 int BFI_MSIX_CPE_QMIN_CT ;
 int BFI_MSIX_CT_MAX ;
 int BFI_MSIX_RME_QMAX_CT ;
 int BFI_MSIX_RME_QMIN_CT ;
 int bfa_msix_all ;
 int bfa_msix_reqq ;
 int bfa_msix_rspq ;

void
bfa_hwct_msix_queue_install(struct bfa_s *bfa)
{
 int i;

 if (bfa->msix.nvecs == 0)
  return;

 if (bfa->msix.nvecs == 1) {
  for (i = BFI_MSIX_CPE_QMIN_CT; i < BFI_MSIX_CT_MAX; i++)
   bfa->msix.handler[i] = bfa_msix_all;
  return;
 }

 for (i = BFI_MSIX_CPE_QMIN_CT; i <= BFI_MSIX_CPE_QMAX_CT; i++)
  bfa->msix.handler[i] = bfa_msix_reqq;

 for (i = BFI_MSIX_RME_QMIN_CT; i <= BFI_MSIX_RME_QMAX_CT; i++)
  bfa->msix.handler[i] = bfa_msix_rspq;
}
