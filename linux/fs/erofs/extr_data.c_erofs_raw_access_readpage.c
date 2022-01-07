
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;
struct file {int dummy; } ;
struct bio {int dummy; } ;
typedef int erofs_off_t ;


 int DBG_BUGON (struct bio*) ;
 scalar_t__ IS_ERR (struct bio*) ;
 int PTR_ERR (struct bio*) ;
 struct bio* erofs_read_raw_page (int *,int ,struct page*,int *,int,int) ;
 int trace_erofs_readpage (struct page*,int) ;

__attribute__((used)) static int erofs_raw_access_readpage(struct file *file, struct page *page)
{
 erofs_off_t last_block;
 struct bio *bio;

 trace_erofs_readpage(page, 1);

 bio = erofs_read_raw_page(((void*)0), page->mapping,
      page, &last_block, 1, 0);

 if (IS_ERR(bio))
  return PTR_ERR(bio);

 DBG_BUGON(bio);
 return 0;
}
