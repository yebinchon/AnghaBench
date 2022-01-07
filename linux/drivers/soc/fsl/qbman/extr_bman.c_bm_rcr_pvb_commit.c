
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bm_rcr_entry {int _ncw_verb; } ;
struct bm_rcr {int busy; scalar_t__ pmode; int available; int vbit; struct bm_rcr_entry* cursor; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int DPAA_ASSERT (int) ;
 scalar_t__ bm_rcr_pvb ;
 int dma_wmb () ;
 int dpaa_flush (struct bm_rcr_entry*) ;
 int rcr_inc (struct bm_rcr*) ;

__attribute__((used)) static inline void bm_rcr_pvb_commit(struct bm_portal *portal, u8 myverb)
{
 struct bm_rcr *rcr = &portal->rcr;
 struct bm_rcr_entry *rcursor;

 DPAA_ASSERT(rcr->busy);
 DPAA_ASSERT(rcr->pmode == bm_rcr_pvb);
 DPAA_ASSERT(rcr->available >= 1);
 dma_wmb();
 rcursor = rcr->cursor;
 rcursor->_ncw_verb = myverb | rcr->vbit;
 dpaa_flush(rcursor);
 rcr_inc(rcr);
 rcr->available--;



}
