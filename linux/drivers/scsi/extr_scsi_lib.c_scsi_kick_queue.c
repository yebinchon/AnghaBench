
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_mq_run_hw_queues (struct request_queue*,int) ;

__attribute__((used)) static void scsi_kick_queue(struct request_queue *q)
{
 blk_mq_run_hw_queues(q, 0);
}
