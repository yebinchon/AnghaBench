
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {int fill; int cursor; } ;
struct qm_portal {struct qm_mr mr; } ;


 int DPAA_ASSERT (int) ;
 int mr_inc (int ) ;

__attribute__((used)) static inline int qm_mr_next(struct qm_portal *portal)
{
 struct qm_mr *mr = &portal->mr;

 DPAA_ASSERT(mr->fill);
 mr->cursor = mr_inc(mr->cursor);
 return --mr->fill;
}
