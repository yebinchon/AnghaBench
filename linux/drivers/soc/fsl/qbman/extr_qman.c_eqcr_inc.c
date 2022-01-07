
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr_entry {int dummy; } ;
struct qm_eqcr {int vbit; struct qm_eqcr_entry* cursor; } ;


 int QM_EQCR_VERB_VBIT ;
 struct qm_eqcr_entry* eqcr_carryclear (struct qm_eqcr_entry*) ;

__attribute__((used)) static inline void eqcr_inc(struct qm_eqcr *eqcr)
{

 struct qm_eqcr_entry *partial = eqcr->cursor + 1;

 eqcr->cursor = eqcr_carryclear(partial);
 if (partial != eqcr->cursor)
  eqcr->vbit ^= QM_EQCR_VERB_VBIT;
}
