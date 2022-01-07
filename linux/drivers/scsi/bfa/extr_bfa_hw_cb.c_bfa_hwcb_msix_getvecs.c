
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_s {int ioc; } ;


 int __HFN_INT_CPE_Q0 ;
 int __HFN_INT_CPE_Q1 ;
 int __HFN_INT_CPE_Q2 ;
 int __HFN_INT_CPE_Q3 ;
 int __HFN_INT_CPE_Q4 ;
 int __HFN_INT_CPE_Q5 ;
 int __HFN_INT_CPE_Q6 ;
 int __HFN_INT_CPE_Q7 ;
 int __HFN_INT_ERR_EMC ;
 int __HFN_INT_ERR_LPU0 ;
 int __HFN_INT_ERR_LPU1 ;
 int __HFN_INT_ERR_PSS ;
 int __HFN_INT_MBOX_LPU0 ;
 int __HFN_INT_MBOX_LPU1 ;
 int __HFN_INT_RME_Q0 ;
 int __HFN_INT_RME_Q1 ;
 int __HFN_INT_RME_Q2 ;
 int __HFN_INT_RME_Q3 ;
 int __HFN_INT_RME_Q4 ;
 int __HFN_INT_RME_Q5 ;
 int __HFN_INT_RME_Q6 ;
 int __HFN_INT_RME_Q7 ;
 int __HFN_NUMINTS ;
 scalar_t__ bfa_ioc_pcifn (int *) ;

void
bfa_hwcb_msix_getvecs(struct bfa_s *bfa, u32 *msix_vecs_bmap,
   u32 *num_vecs, u32 *max_vec_bit)
{

 if (bfa_ioc_pcifn(&bfa->ioc) == 0) {
  *msix_vecs_bmap = (__HFN_INT_CPE_Q0 | __HFN_INT_CPE_Q1 |
       __HFN_INT_CPE_Q2 | __HFN_INT_CPE_Q3 |
       __HFN_INT_RME_Q0 | __HFN_INT_RME_Q1 |
       __HFN_INT_RME_Q2 | __HFN_INT_RME_Q3 |
       __HFN_INT_MBOX_LPU0);
  *max_vec_bit = __HFN_INT_MBOX_LPU0;
 } else {
  *msix_vecs_bmap = (__HFN_INT_CPE_Q4 | __HFN_INT_CPE_Q5 |
       __HFN_INT_CPE_Q6 | __HFN_INT_CPE_Q7 |
       __HFN_INT_RME_Q4 | __HFN_INT_RME_Q5 |
       __HFN_INT_RME_Q6 | __HFN_INT_RME_Q7 |
       __HFN_INT_MBOX_LPU1);
  *max_vec_bit = __HFN_INT_MBOX_LPU1;
 }

 *msix_vecs_bmap |= (__HFN_INT_ERR_EMC | __HFN_INT_ERR_LPU0 |
       __HFN_INT_ERR_LPU1 | __HFN_INT_ERR_PSS);
 *num_vecs = 13;
}
