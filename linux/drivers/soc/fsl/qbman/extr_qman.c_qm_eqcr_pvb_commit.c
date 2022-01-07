
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_eqcr {scalar_t__ pmode; int vbit; scalar_t__ busy; int available; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int _ncw_verb; } ;


 int DPAA_ASSERT (int) ;
 int dma_wmb () ;
 int dpaa_flush (struct qm_eqcr_entry*) ;
 int eqcr_commit_checks (struct qm_eqcr*) ;
 int eqcr_inc (struct qm_eqcr*) ;
 scalar_t__ qm_eqcr_pvb ;

__attribute__((used)) static inline void qm_eqcr_pvb_commit(struct qm_portal *portal, u8 myverb)
{
 struct qm_eqcr *eqcr = &portal->eqcr;
 struct qm_eqcr_entry *eqcursor;

 eqcr_commit_checks(eqcr);
 DPAA_ASSERT(eqcr->pmode == qm_eqcr_pvb);
 dma_wmb();
 eqcursor = eqcr->cursor;
 eqcursor->_ncw_verb = myverb | eqcr->vbit;
 dpaa_flush(eqcursor);
 eqcr_inc(eqcr);
 eqcr->available--;



}
