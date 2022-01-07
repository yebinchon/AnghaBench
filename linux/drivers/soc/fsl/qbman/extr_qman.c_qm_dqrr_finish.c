
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr {scalar_t__ cmode; scalar_t__ ci; int cursor; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 scalar_t__ dqrr_ptr2idx (int ) ;
 int pr_crit (char*) ;
 scalar_t__ qm_dqrr_cdc ;

__attribute__((used)) static inline void qm_dqrr_finish(struct qm_portal *portal)
{







}
