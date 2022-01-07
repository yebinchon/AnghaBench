
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ioreq {int timeout_work; } ;
struct qedf_ctx {int timer_work_queue; } ;


 int msecs_to_jiffies (unsigned int) ;
 int queue_delayed_work (int ,int *,int ) ;

void qedf_cmd_timer_set(struct qedf_ctx *qedf, struct qedf_ioreq *io_req,
 unsigned int timer_msec)
{
 queue_delayed_work(qedf->timer_work_queue, &io_req->timeout_work,
     msecs_to_jiffies(timer_msec));
}
