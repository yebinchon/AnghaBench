
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int index; int flags; TYPE_1__* mapping; } ;
struct TYPE_4__ {int vnode; int vid; } ;
struct afs_vnode {int cache; TYPE_2__ fid; } ;
typedef int gfp_t ;
struct TYPE_3__ {int host; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int ClearPagePrivate (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int _enter (char*,int ,int ,int ,int ,int ) ;
 int _leave (char*) ;
 int fscache_maybe_release_page (int ,struct page*,int ) ;
 unsigned long page_private (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int trace_afs_page_dirty (struct afs_vnode*,int ,int ,unsigned long) ;
 int tracepoint_string (char*) ;

__attribute__((used)) static int afs_releasepage(struct page *page, gfp_t gfp_flags)
{
 struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
 unsigned long priv;

 _enter("{{%llx:%llu}[%lu],%lx},%x",
        vnode->fid.vid, vnode->fid.vnode, page->index, page->flags,
        gfp_flags);
 if (PagePrivate(page)) {
  priv = page_private(page);
  trace_afs_page_dirty(vnode, tracepoint_string("rel"),
         page->index, priv);
  set_page_private(page, 0);
  ClearPagePrivate(page);
 }


 _leave(" = T");
 return 1;
}
