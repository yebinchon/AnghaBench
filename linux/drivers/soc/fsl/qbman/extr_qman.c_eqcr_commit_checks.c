
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qm_eqcr {int busy; int available; TYPE_1__* cursor; } ;
struct TYPE_2__ {int fqid; } ;


 int DPAA_ASSERT (int) ;
 int QM_FQID_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline void eqcr_commit_checks(struct qm_eqcr *eqcr)
{
 DPAA_ASSERT(eqcr->busy);
 DPAA_ASSERT(!(be32_to_cpu(eqcr->cursor->fqid) & ~QM_FQID_MASK));
 DPAA_ASSERT(eqcr->available >= 1);
}
