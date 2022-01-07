
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_call_ctx {int dummy; } ;


 int free_pages_list (struct optee_call_ctx*) ;

void optee_rpc_finalize_call(struct optee_call_ctx *call_ctx)
{
 free_pages_list(call_ctx);
}
