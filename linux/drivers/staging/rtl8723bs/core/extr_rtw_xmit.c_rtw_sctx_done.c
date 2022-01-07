
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submit_ctx {int dummy; } ;


 int RTW_SCTX_DONE_SUCCESS ;
 int rtw_sctx_done_err (struct submit_ctx**,int ) ;

void rtw_sctx_done(struct submit_ctx **sctx)
{
 rtw_sctx_done_err(sctx, RTW_SCTX_DONE_SUCCESS);
}
