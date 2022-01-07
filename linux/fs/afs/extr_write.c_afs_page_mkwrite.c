
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_3__* page; TYPE_1__* vma; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct TYPE_11__ {int vnode; int vid; } ;
struct afs_vnode {int cache; TYPE_2__ fid; } ;
struct TYPE_12__ {int index; } ;
struct TYPE_10__ {struct file* vm_file; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 unsigned long AFS_PRIV_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int PG_writeback ;
 scalar_t__ PageWriteback (TYPE_3__*) ;
 int SetPagePrivate (TYPE_3__*) ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_RETRY ;
 int _enter (char*,int ,int ,int ) ;
 struct inode* file_inode (struct file*) ;
 int fscache_wait_on_page_write (int ,TYPE_3__*) ;
 scalar_t__ lock_page_killable (TYPE_3__*) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 int set_page_private (TYPE_3__*,unsigned long) ;
 int trace_afs_page_dirty (struct afs_vnode*,int ,int ,unsigned long) ;
 int tracepoint_string (char*) ;
 scalar_t__ wait_on_page_bit_killable (TYPE_3__*,int ) ;
 int wait_on_page_writeback (TYPE_3__*) ;

vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
{
 struct file *file = vmf->vma->vm_file;
 struct inode *inode = file_inode(file);
 struct afs_vnode *vnode = AFS_FS_I(inode);
 unsigned long priv;

 _enter("{{%llx:%llu}},{%lx}",
        vnode->fid.vid, vnode->fid.vnode, vmf->page->index);

 sb_start_pagefault(inode->i_sb);
 if (PageWriteback(vmf->page) &&
     wait_on_page_bit_killable(vmf->page, PG_writeback) < 0)
  return VM_FAULT_RETRY;

 if (lock_page_killable(vmf->page) < 0)
  return VM_FAULT_RETRY;





 wait_on_page_writeback(vmf->page);

 priv = (unsigned long)PAGE_SIZE << AFS_PRIV_SHIFT;
 priv |= 0;
 trace_afs_page_dirty(vnode, tracepoint_string("mkwrite"),
        vmf->page->index, priv);
 SetPagePrivate(vmf->page);
 set_page_private(vmf->page, priv);

 sb_end_pagefault(inode->i_sb);
 return VM_FAULT_LOCKED;
}
