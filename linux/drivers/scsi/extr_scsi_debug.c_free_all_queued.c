
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_queued_cmd {int * sd_dp; } ;
struct sdebug_queue {struct sdebug_queued_cmd* qc_arr; } ;


 int SDEBUG_CANQUEUE ;
 int kfree (int *) ;
 struct sdebug_queue* sdebug_q_arr ;
 int submit_queues ;

__attribute__((used)) static void free_all_queued(void)
{
 int j, k;
 struct sdebug_queue *sqp;
 struct sdebug_queued_cmd *sqcp;

 for (j = 0, sqp = sdebug_q_arr; j < submit_queues; ++j, ++sqp) {
  for (k = 0; k < SDEBUG_CANQUEUE; ++k) {
   sqcp = &sqp->qc_arr[k];
   kfree(sqcp->sd_dp);
   sqcp->sd_dp = ((void*)0);
  }
 }
}
