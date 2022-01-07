
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_eqcr {int available; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;



__attribute__((used)) static inline u8 qm_eqcr_get_avail(struct qm_portal *portal)
{
 struct qm_eqcr *eqcr = &portal->eqcr;

 return eqcr->available;
}
