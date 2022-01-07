
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_s {int dummy; } ;


 int BFI_MSIX_CT_MAX ;

void
bfa_hwct_msix_getvecs(struct bfa_s *bfa, u32 *msix_vecs_bmap,
   u32 *num_vecs, u32 *max_vec_bit)
{
 *msix_vecs_bmap = (1 << BFI_MSIX_CT_MAX) - 1;
 *max_vec_bit = (1 << (BFI_MSIX_CT_MAX - 1));
 *num_vecs = BFI_MSIX_CT_MAX;
}
