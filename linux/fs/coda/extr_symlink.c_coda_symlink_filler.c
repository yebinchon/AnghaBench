
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct coda_inode_info {int c_fid; } ;
struct TYPE_2__ {struct inode* host; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 unsigned int PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 char* page_address (struct page*) ;
 int unlock_page (struct page*) ;
 int venus_readlink (int ,int *,char*,unsigned int*) ;

__attribute__((used)) static int coda_symlink_filler(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 int error;
 struct coda_inode_info *cii;
 unsigned int len = PAGE_SIZE;
 char *p = page_address(page);

 cii = ITOC(inode);

 error = venus_readlink(inode->i_sb, &cii->c_fid, p, &len);
 if (error)
  goto fail;
 SetPageUptodate(page);
 unlock_page(page);
 return 0;

fail:
 SetPageError(page);
 unlock_page(page);
 return error;
}
