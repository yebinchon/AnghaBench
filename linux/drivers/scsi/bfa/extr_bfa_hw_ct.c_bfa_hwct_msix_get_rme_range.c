
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_s {int dummy; } ;


 int BFI_MSIX_RME_QMAX_CT ;
 int BFI_MSIX_RME_QMIN_CT ;

void
bfa_hwct_msix_get_rme_range(struct bfa_s *bfa, u32 *start, u32 *end)
{
 *start = BFI_MSIX_RME_QMIN_CT;
 *end = BFI_MSIX_RME_QMAX_CT;
}
