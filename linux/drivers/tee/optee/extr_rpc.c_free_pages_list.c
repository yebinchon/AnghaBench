
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_call_ctx {scalar_t__ num_entries; int * pages_list; } ;


 int optee_free_pages_list (int *,scalar_t__) ;

__attribute__((used)) static void free_pages_list(struct optee_call_ctx *call_ctx)
{
 if (call_ctx->pages_list) {
  optee_free_pages_list(call_ctx->pages_list,
          call_ctx->num_entries);
  call_ctx->pages_list = ((void*)0);
  call_ctx->num_entries = 0;
 }
}
