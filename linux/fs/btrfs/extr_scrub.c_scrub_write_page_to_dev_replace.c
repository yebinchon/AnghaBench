
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_page {int * page; scalar_t__ io_error; } ;
struct scrub_block {int sctx; struct scrub_page** pagev; } ;


 int BUG_ON (int ) ;
 int clear_page (void*) ;
 int flush_dcache_page (int *) ;
 void* kmap_atomic (int *) ;
 int kunmap_atomic (void*) ;
 int scrub_add_page_to_wr_bio (int ,struct scrub_page*) ;

__attribute__((used)) static int scrub_write_page_to_dev_replace(struct scrub_block *sblock,
        int page_num)
{
 struct scrub_page *spage = sblock->pagev[page_num];

 BUG_ON(spage->page == ((void*)0));
 if (spage->io_error) {
  void *mapped_buffer = kmap_atomic(spage->page);

  clear_page(mapped_buffer);
  flush_dcache_page(spage->page);
  kunmap_atomic(mapped_buffer);
 }
 return scrub_add_page_to_wr_bio(sblock->sctx, spage);
}
