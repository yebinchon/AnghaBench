
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct btrfsic_block_data_ctx {unsigned int len; int ** datav; int ** pagev; int * mem_to_free; } ;


 int BUG_ON (int) ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int __free_page (int *) ;
 int kfree (int *) ;
 int kunmap (int *) ;

__attribute__((used)) static void btrfsic_release_block_ctx(struct btrfsic_block_data_ctx *block_ctx)
{
 if (block_ctx->mem_to_free) {
  unsigned int num_pages;

  BUG_ON(!block_ctx->datav);
  BUG_ON(!block_ctx->pagev);
  num_pages = (block_ctx->len + (u64)PAGE_SIZE - 1) >>
       PAGE_SHIFT;
  while (num_pages > 0) {
   num_pages--;
   if (block_ctx->datav[num_pages]) {
    kunmap(block_ctx->pagev[num_pages]);
    block_ctx->datav[num_pages] = ((void*)0);
   }
   if (block_ctx->pagev[num_pages]) {
    __free_page(block_ctx->pagev[num_pages]);
    block_ctx->pagev[num_pages] = ((void*)0);
   }
  }

  kfree(block_ctx->mem_to_free);
  block_ctx->mem_to_free = ((void*)0);
  block_ctx->pagev = ((void*)0);
  block_ctx->datav = ((void*)0);
 }
}
