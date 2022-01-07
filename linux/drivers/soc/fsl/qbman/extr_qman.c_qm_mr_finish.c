
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {scalar_t__ ci; int cursor; } ;
struct qm_portal {struct qm_mr mr; } ;


 scalar_t__ mr_ptr2idx (int ) ;
 int pr_crit (char*) ;

__attribute__((used)) static inline void qm_mr_finish(struct qm_portal *portal)
{
 struct qm_mr *mr = &portal->mr;

 if (mr->ci != mr_ptr2idx(mr->cursor))
  pr_crit("Ignoring completed MR entries\n");
}
