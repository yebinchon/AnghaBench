
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mc {scalar_t__ state; } ;
struct qm_portal {struct qm_mc mc; } ;


 int DPAA_ASSERT (int) ;
 int pr_crit (char*) ;
 scalar_t__ qman_mc_idle ;

__attribute__((used)) static inline void qm_mc_finish(struct qm_portal *portal)
{







}
