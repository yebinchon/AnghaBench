
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr {struct qm_dqrr_entry const* cursor; int fill; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;
struct qm_dqrr_entry {int dummy; } ;



__attribute__((used)) static inline const struct qm_dqrr_entry *qm_dqrr_current(
      struct qm_portal *portal)
{
 struct qm_dqrr *dqrr = &portal->dqrr;

 if (!dqrr->fill)
  return ((void*)0);
 return dqrr->cursor;
}
