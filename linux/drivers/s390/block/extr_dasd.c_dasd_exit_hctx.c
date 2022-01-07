
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int * driver_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void dasd_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int idx)
{
 kfree(hctx->driver_data);
 hctx->driver_data = ((void*)0);
}
