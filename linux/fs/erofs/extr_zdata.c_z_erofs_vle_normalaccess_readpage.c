
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mpage; } ;
struct z_erofs_decompress_frontend {int headoffset; TYPE_1__ map; int clt; } ;
struct page {scalar_t__ index; TYPE_2__* mapping; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
typedef int erofs_off_t ;
struct TYPE_4__ {struct inode* host; } ;


 struct z_erofs_decompress_frontend DECOMPRESS_FRONTEND_INIT (struct inode* const) ;
 int LIST_HEAD (int ) ;
 int PAGE_SHIFT ;
 int erofs_err (int ,char*,int) ;
 int pagepool ;
 int put_page (scalar_t__) ;
 int put_pages_list (int *) ;
 int trace_erofs_readpage (struct page*,int) ;
 int z_erofs_collector_end (int *) ;
 int z_erofs_do_read_page (struct z_erofs_decompress_frontend*,struct page*,int *) ;
 int z_erofs_submit_and_unzip (int ,int *,int *,int) ;

__attribute__((used)) static int z_erofs_vle_normalaccess_readpage(struct file *file,
          struct page *page)
{
 struct inode *const inode = page->mapping->host;
 struct z_erofs_decompress_frontend f = DECOMPRESS_FRONTEND_INIT(inode);
 int err;
 LIST_HEAD(pagepool);

 trace_erofs_readpage(page, 0);

 f.headoffset = (erofs_off_t)page->index << PAGE_SHIFT;

 err = z_erofs_do_read_page(&f, page, &pagepool);
 (void)z_erofs_collector_end(&f.clt);


 z_erofs_submit_and_unzip(inode->i_sb, &f.clt, &pagepool, 1);

 if (err)
  erofs_err(inode->i_sb, "failed to read, err [%d]", err);

 if (f.map.mpage)
  put_page(f.map.mpage);


 put_pages_list(&pagepool);
 return err;
}
