
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t vm_fault_t ;
struct vm_fault {struct page* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; int i_sb; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; int i_ceph_lock; } ;
struct ceph_file_info {int fmode; } ;
struct ceph_cap_flush {int dummy; } ;
typedef int sigset_t ;
typedef size_t loff_t ;
struct TYPE_6__ {struct ceph_file_info* private_data; } ;


 int CEPH_CAP_FILE_BUFFER ;
 int CEPH_CAP_FILE_LAZYIO ;
 int CEPH_CAP_FILE_WR ;
 int CEPH_FILE_MODE_LAZY ;
 scalar_t__ CEPH_INLINE_NONE ;
 int EAGAIN ;
 size_t PAGE_MASK ;
 size_t PAGE_SIZE ;
 size_t VM_FAULT_LOCKED ;
 size_t VM_FAULT_NOPAGE ;
 size_t VM_FAULT_OOM ;
 size_t VM_FAULT_SIGBUS ;
 int __ceph_mark_dirty_caps (struct ceph_inode_info*,int ,struct ceph_cap_flush**) ;
 int __mark_inode_dirty (struct inode*,int) ;
 struct ceph_cap_flush* ceph_alloc_cap_flush () ;
 int ceph_block_sigs (int *) ;
 size_t ceph_cap_string (int) ;
 int ceph_free_cap_flush (struct ceph_cap_flush*) ;
 int ceph_get_caps (TYPE_1__*,int ,int,size_t,int*,int *) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_put_cap_refs (struct ceph_inode_info*,int) ;
 int ceph_restore_sigs (int *) ;
 int ceph_uninline_data (TYPE_1__*,struct page*) ;
 int ceph_update_writeable_page (TYPE_1__*,size_t,size_t,struct page*) ;
 size_t ceph_vinop (struct inode*) ;
 int dout (char*,struct inode*,size_t,size_t,size_t,...) ;
 struct inode* file_inode (TYPE_1__*) ;
 int file_update_time (TYPE_1__*) ;
 size_t i_size_read (struct inode*) ;
 int inode_inc_iversion_raw (struct inode*) ;
 int lock_page (struct page*) ;
 size_t page_offset (struct page*) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (struct page*) ;
 size_t vmf_error (int) ;

__attribute__((used)) static vm_fault_t ceph_page_mkwrite(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct inode *inode = file_inode(vma->vm_file);
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_file_info *fi = vma->vm_file->private_data;
 struct ceph_cap_flush *prealloc_cf;
 struct page *page = vmf->page;
 loff_t off = page_offset(page);
 loff_t size = i_size_read(inode);
 size_t len;
 int want, got, err;
 sigset_t oldset;
 vm_fault_t ret = VM_FAULT_SIGBUS;

 prealloc_cf = ceph_alloc_cap_flush();
 if (!prealloc_cf)
  return VM_FAULT_OOM;

 sb_start_pagefault(inode->i_sb);
 ceph_block_sigs(&oldset);

 if (ci->i_inline_version != CEPH_INLINE_NONE) {
  struct page *locked_page = ((void*)0);
  if (off == 0) {
   lock_page(page);
   locked_page = page;
  }
  err = ceph_uninline_data(vma->vm_file, locked_page);
  if (locked_page)
   unlock_page(locked_page);
  if (err < 0)
   goto out_free;
 }

 if (off + PAGE_SIZE <= size)
  len = PAGE_SIZE;
 else
  len = size & ~PAGE_MASK;

 dout("page_mkwrite %p %llx.%llx %llu~%zd getting caps i_size %llu\n",
      inode, ceph_vinop(inode), off, len, size);
 if (fi->fmode & CEPH_FILE_MODE_LAZY)
  want = CEPH_CAP_FILE_BUFFER | CEPH_CAP_FILE_LAZYIO;
 else
  want = CEPH_CAP_FILE_BUFFER;

 got = 0;
 err = ceph_get_caps(vma->vm_file, CEPH_CAP_FILE_WR, want, off + len,
       &got, ((void*)0));
 if (err < 0)
  goto out_free;

 dout("page_mkwrite %p %llu~%zd got cap refs on %s\n",
      inode, off, len, ceph_cap_string(got));


 file_update_time(vma->vm_file);
 inode_inc_iversion_raw(inode);

 do {
  lock_page(page);

  if ((off > size) || (page->mapping != inode->i_mapping)) {
   unlock_page(page);
   ret = VM_FAULT_NOPAGE;
   break;
  }

  err = ceph_update_writeable_page(vma->vm_file, off, len, page);
  if (err >= 0) {

   set_page_dirty(page);
   ret = VM_FAULT_LOCKED;
  }
 } while (err == -EAGAIN);

 if (ret == VM_FAULT_LOCKED ||
     ci->i_inline_version != CEPH_INLINE_NONE) {
  int dirty;
  spin_lock(&ci->i_ceph_lock);
  ci->i_inline_version = CEPH_INLINE_NONE;
  dirty = __ceph_mark_dirty_caps(ci, CEPH_CAP_FILE_WR,
            &prealloc_cf);
  spin_unlock(&ci->i_ceph_lock);
  if (dirty)
   __mark_inode_dirty(inode, dirty);
 }

 dout("page_mkwrite %p %llu~%zd dropping cap refs on %s ret %x\n",
      inode, off, len, ceph_cap_string(got), ret);
 ceph_put_cap_refs(ci, got);
out_free:
 ceph_restore_sigs(&oldset);
 sb_end_pagefault(inode->i_sb);
 ceph_free_cap_flush(prealloc_cf);
 if (err < 0)
  ret = vmf_error(err);
 return ret;
}
