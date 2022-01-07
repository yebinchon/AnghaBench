
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bman_portal {int p; } ;


 int BM_PIRQ_RCRI ;
 int BM_REG_ISR ;
 int DPAA_ASSERT (int) ;
 int bm_out (int *,int ,int) ;
 int bm_rcr_cce_update (int *) ;
 int bm_rcr_set_ithresh (int *,int ) ;

__attribute__((used)) static u32 poll_portal_slow(struct bman_portal *p, u32 is)
{
 u32 ret = is;

 if (is & BM_PIRQ_RCRI) {
  bm_rcr_cce_update(&p->p);
  bm_rcr_set_ithresh(&p->p, 0);
  bm_out(&p->p, BM_REG_ISR, BM_PIRQ_RCRI);
  is &= ~BM_PIRQ_RCRI;
 }


 DPAA_ASSERT(!is);
 return ret;
}
