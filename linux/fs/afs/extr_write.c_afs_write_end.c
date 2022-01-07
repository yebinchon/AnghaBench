
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; } ;
struct key {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {int wb_lock; int vfs_inode; TYPE_1__ fid; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ loff_t ;


 struct afs_vnode* AFS_FS_I (int ) ;
 scalar_t__ PageDirty (struct page*) ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int _debug (char*) ;
 int _enter (char*,int ,int ,int ) ;
 struct key* afs_file_key (struct file*) ;
 int afs_fill_page (struct afs_vnode*,struct key*,scalar_t__,unsigned int,struct page*) ;
 int file_inode (struct file*) ;
 scalar_t__ i_size_read (int *) ;
 int i_size_write (int *,scalar_t__) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (struct page*) ;

int afs_write_end(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied,
    struct page *page, void *fsdata)
{
 struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
 struct key *key = afs_file_key(file);
 loff_t i_size, maybe_i_size;
 int ret;

 _enter("{%llx:%llu},{%lx}",
        vnode->fid.vid, vnode->fid.vnode, page->index);

 maybe_i_size = pos + copied;

 i_size = i_size_read(&vnode->vfs_inode);
 if (maybe_i_size > i_size) {
  spin_lock(&vnode->wb_lock);
  i_size = i_size_read(&vnode->vfs_inode);
  if (maybe_i_size > i_size)
   i_size_write(&vnode->vfs_inode, maybe_i_size);
  spin_unlock(&vnode->wb_lock);
 }

 if (!PageUptodate(page)) {
  if (copied < len) {




   ret = afs_fill_page(vnode, key, pos + copied,
         len - copied, page);
   if (ret < 0)
    goto out;
  }
  SetPageUptodate(page);
 }

 set_page_dirty(page);
 if (PageDirty(page))
  _debug("dirtied");
 ret = copied;

out:
 unlock_page(page);
 put_page(page);
 return ret;
}
