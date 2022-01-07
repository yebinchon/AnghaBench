
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;
struct qm_dqrr_entry {int fd; } ;
struct hp_handler {int tx; } ;
typedef enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;


 scalar_t__ HP_LOOPS ;
 int WARN_ON (int) ;
 scalar_t__ loop_counter ;
 int pr_crit (char*) ;
 int pr_info (char*,scalar_t__) ;
 int process_frame_data (struct hp_handler*,int *) ;
 int qman_cb_dqrr_consume ;
 scalar_t__ qman_enqueue (int *,int *) ;
 int queue ;
 int wake_up (int *) ;

__attribute__((used)) static enum qman_cb_dqrr_result special_dqrr(struct qman_portal *portal,
          struct qman_fq *fq,
          const struct qm_dqrr_entry *dqrr)
{
 struct hp_handler *handler = (struct hp_handler *)fq;

 process_frame_data(handler, &dqrr->fd);
 if (++loop_counter < HP_LOOPS) {
  if (qman_enqueue(&handler->tx, &dqrr->fd)) {
   pr_crit("qman_enqueue() failed");
   WARN_ON(1);
   goto skip;
  }
 } else {
  pr_info("Received final (%dth) frame\n", loop_counter);
  wake_up(&queue);
 }
skip:
 return qman_cb_dqrr_consume;
}
