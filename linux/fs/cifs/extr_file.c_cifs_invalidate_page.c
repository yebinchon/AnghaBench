
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct cifsInodeInfo {int vfs_inode; } ;
struct TYPE_2__ {int host; } ;


 struct cifsInodeInfo* CIFS_I (int ) ;
 unsigned int PAGE_SIZE ;
 int cifs_fscache_invalidate_page (struct page*,int *) ;

__attribute__((used)) static void cifs_invalidate_page(struct page *page, unsigned int offset,
     unsigned int length)
{
 struct cifsInodeInfo *cifsi = CIFS_I(page->mapping->host);

 if (offset == 0 && length == PAGE_SIZE)
  cifs_fscache_invalidate_page(page, &cifsi->vfs_inode);
}
