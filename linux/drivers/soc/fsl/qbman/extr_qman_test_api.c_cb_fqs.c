
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union qm_mr_entry {scalar_t__ verb; } ;
typedef scalar_t__ u8 ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;


 scalar_t__ QM_MR_VERB_FQRN ;
 scalar_t__ QM_MR_VERB_FQRNI ;
 scalar_t__ QM_MR_VERB_TYPE_MASK ;
 int WARN_ON (int) ;
 int pr_crit (char*) ;
 int pr_info (char*) ;
 int retire_complete ;
 int waitqueue ;
 int wake_up (int *) ;

__attribute__((used)) static void cb_fqs(struct qman_portal *p, struct qman_fq *fq,
     const union qm_mr_entry *msg)
{
 u8 verb = (msg->verb & QM_MR_VERB_TYPE_MASK);

 if ((verb != QM_MR_VERB_FQRN) && (verb != QM_MR_VERB_FQRNI)) {
  pr_crit("unexpected FQS message");
  WARN_ON(1);
  return;
 }
 pr_info("Retirement message received\n");
 retire_complete = 1;
 wake_up(&waitqueue);
}
