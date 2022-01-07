
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bm_rcr {int ithresh; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int BM_REG_RCR_ITR ;
 int bm_out (struct bm_portal*,int ,int ) ;

__attribute__((used)) static void bm_rcr_set_ithresh(struct bm_portal *portal, u8 ithresh)
{
 struct bm_rcr *rcr = &portal->rcr;

 rcr->ithresh = ithresh;
 bm_out(portal, BM_REG_RCR_ITR, ithresh);
}
