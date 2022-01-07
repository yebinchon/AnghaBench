
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct afs_vnode {int cache; TYPE_1__ status; } ;
struct afs_read {size_t index; struct page** pages; struct afs_vnode* vnode; } ;


 int BUG_ON (scalar_t__) ;
 int GFP_KERNEL ;
 scalar_t__ PageFsCache (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int fscache_uncache_page (int ,struct page*) ;
 scalar_t__ fscache_write_page (int ,struct page*,int ,int ) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void afs_readpages_page_done(struct afs_read *req)
{



 struct page *page = req->pages[req->index];

 req->pages[req->index] = ((void*)0);
 SetPageUptodate(page);
 unlock_page(page);
 put_page(page);
}
