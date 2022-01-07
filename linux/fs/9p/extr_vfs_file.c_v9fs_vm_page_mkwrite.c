
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct v9fs_inode {int writeback_fid; } ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {struct file* vm_file; } ;


 int BUG_ON (int) ;
 int P9_DEBUG_VFS ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 struct inode* file_inode (struct file*) ;
 int file_update_time (struct file*) ;
 int lock_page (struct page*) ;
 int p9_debug (int ,char*,struct page*,unsigned long) ;
 int unlock_page (struct page*) ;
 int v9fs_fscache_wait_on_page_write (struct inode*,struct page*) ;
 int wait_for_stable_page (struct page*) ;

__attribute__((used)) static vm_fault_t
v9fs_vm_page_mkwrite(struct vm_fault *vmf)
{
 struct v9fs_inode *v9inode;
 struct page *page = vmf->page;
 struct file *filp = vmf->vma->vm_file;
 struct inode *inode = file_inode(filp);


 p9_debug(P9_DEBUG_VFS, "page %p fid %lx\n",
   page, (unsigned long)filp->private_data);


 file_update_time(filp);

 v9inode = V9FS_I(inode);

 v9fs_fscache_wait_on_page_write(inode, page);
 BUG_ON(!v9inode->writeback_fid);
 lock_page(page);
 if (page->mapping != inode->i_mapping)
  goto out_unlock;
 wait_for_stable_page(page);

 return VM_FAULT_LOCKED;
out_unlock:
 unlock_page(page);
 return VM_FAULT_NOPAGE;
}
