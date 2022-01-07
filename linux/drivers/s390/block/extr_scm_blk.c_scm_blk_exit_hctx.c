
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_queue {int scmrq; } ;
struct blk_mq_hw_ctx {struct scm_queue* driver_data; } ;


 int WARN_ON (int ) ;
 int kfree (struct scm_queue*) ;

__attribute__((used)) static void scm_blk_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int idx)
{
 struct scm_queue *qd = hctx->driver_data;

 WARN_ON(qd->scmrq);
 kfree(hctx->driver_data);
 hctx->driver_data = ((void*)0);
}
