
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;
struct qm_dqrr_entry {int stat; int fd; } ;
typedef enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;


 int QM_DQRR_STAT_UNSCHEDULED ;
 scalar_t__ WARN_ON (int ) ;
 int fd ;
 int fd_dq ;
 int fd_inc (int *) ;
 int fd_neq (int *,int *) ;
 int pr_err (char*) ;
 int qman_cb_dqrr_consume ;
 int sdqcr_complete ;
 int waitqueue ;
 int wake_up (int *) ;

__attribute__((used)) static enum qman_cb_dqrr_result cb_dqrr(struct qman_portal *p,
     struct qman_fq *fq,
     const struct qm_dqrr_entry *dq)
{
 if (WARN_ON(fd_neq(&fd_dq, &dq->fd))) {
  pr_err("BADNESS: dequeued frame doesn't match;\n");
  return qman_cb_dqrr_consume;
 }
 fd_inc(&fd_dq);
 if (!(dq->stat & QM_DQRR_STAT_UNSCHEDULED) && !fd_neq(&fd_dq, &fd)) {
  sdqcr_complete = 1;
  wake_up(&waitqueue);
 }
 return qman_cb_dqrr_consume;
}
