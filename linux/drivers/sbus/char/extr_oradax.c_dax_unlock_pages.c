
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dax_ctx {struct page*** pages; } ;


 int NUM_STREAM_TYPES ;
 int OUT ;
 int dax_dbg (char*,struct page*) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static void dax_unlock_pages(struct dax_ctx *ctx, int ccb_index, int nelem)
{
 int i, j;

 for (i = ccb_index; i < ccb_index + nelem; i++) {
  for (j = 0; j < NUM_STREAM_TYPES; j++) {
   struct page *p = ctx->pages[i][j];

   if (p) {
    dax_dbg("freeing page %p", p);
    if (j == OUT)
     set_page_dirty(p);
    put_page(p);
    ctx->pages[i][j] = ((void*)0);
   }
  }
 }
}
