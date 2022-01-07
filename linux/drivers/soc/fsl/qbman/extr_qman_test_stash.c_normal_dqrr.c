
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;
struct qm_dqrr_entry {int fd; } ;
struct hp_handler {int tx; } ;
typedef enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;


 int WARN_ON (int) ;
 int pr_crit (char*) ;
 scalar_t__ process_frame_data (struct hp_handler*,int *) ;
 int qman_cb_dqrr_consume ;
 scalar_t__ qman_enqueue (int *,int *) ;

__attribute__((used)) static enum qman_cb_dqrr_result normal_dqrr(struct qman_portal *portal,
         struct qman_fq *fq,
         const struct qm_dqrr_entry *dqrr)
{
 struct hp_handler *handler = (struct hp_handler *)fq;

 if (process_frame_data(handler, &dqrr->fd)) {
  WARN_ON(1);
  goto skip;
 }
 if (qman_enqueue(&handler->tx, &dqrr->fd)) {
  pr_crit("qman_enqueue() failed");
  WARN_ON(1);
 }
skip:
 return qman_cb_dqrr_consume;
}
