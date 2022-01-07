
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submit_ctx {int timeout_ms; int status; int done; int submit_time; } ;


 int RTW_SCTX_SUBMITTED ;
 int init_completion (int *) ;
 int jiffies ;

void rtw_sctx_init(struct submit_ctx *sctx, int timeout_ms)
{
 sctx->timeout_ms = timeout_ms;
 sctx->submit_time = jiffies;
 init_completion(&sctx->done);
 sctx->status = RTW_SCTX_SUBMITTED;
}
