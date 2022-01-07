
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qm_mr_entry {int dummy; } qm_mr_entry ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;


 int WARN_ON (int) ;
 int pr_crit (char*) ;

__attribute__((used)) static void cb_ern(struct qman_portal *p, struct qman_fq *fq,
     const union qm_mr_entry *msg)
{
 pr_crit("cb_ern() unimplemented");
 WARN_ON(1);
}
