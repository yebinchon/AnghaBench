
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qm_mr_entry {int dummy; } qm_mr_entry ;
struct qm_mr {union qm_mr_entry const* cursor; int fill; } ;
struct qm_portal {struct qm_mr mr; } ;



__attribute__((used)) static inline const union qm_mr_entry *qm_mr_current(struct qm_portal *portal)
{
 struct qm_mr *mr = &portal->mr;

 if (!mr->fill)
  return ((void*)0);
 return mr->cursor;
}
