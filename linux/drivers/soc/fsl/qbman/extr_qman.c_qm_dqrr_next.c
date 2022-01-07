
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_dqrr {int fill; int cursor; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int DPAA_ASSERT (int ) ;
 int dqrr_inc (int ) ;

__attribute__((used)) static inline u8 qm_dqrr_next(struct qm_portal *portal)
{
 struct qm_dqrr *dqrr = &portal->dqrr;

 DPAA_ASSERT(dqrr->fill);
 dqrr->cursor = dqrr_inc(dqrr->cursor);
 return --dqrr->fill;
}
