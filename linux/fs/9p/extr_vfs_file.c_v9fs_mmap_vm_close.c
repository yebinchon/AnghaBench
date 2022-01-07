
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int range_start; int range_end; scalar_t__ nr_to_write; int sync_mode; } ;
struct vm_area_struct {int vm_pgoff; int vm_flags; int vm_file; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct inode {int i_mapping; } ;


 scalar_t__ LONG_MAX ;
 int P9_DEBUG_VFS ;
 int PAGE_SIZE ;
 int VM_SHARED ;
 int WB_SYNC_ALL ;
 struct inode* file_inode (int ) ;
 int mapping_cap_writeback_dirty (int ) ;
 int might_sleep () ;
 int p9_debug (int ,char*,struct vm_area_struct*) ;
 int sync_inode (struct inode*,struct writeback_control*) ;

__attribute__((used)) static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
{
 struct inode *inode;

 struct writeback_control wbc = {
  .nr_to_write = LONG_MAX,
  .sync_mode = WB_SYNC_ALL,
  .range_start = vma->vm_pgoff * PAGE_SIZE,

  .range_end = vma->vm_pgoff * PAGE_SIZE +
   (vma->vm_end - vma->vm_start - 1),
 };

 if (!(vma->vm_flags & VM_SHARED))
  return;

 p9_debug(P9_DEBUG_VFS, "9p VMA close, %p, flushing", vma);

 inode = file_inode(vma->vm_file);

 if (!mapping_cap_writeback_dirty(inode->i_mapping))
  wbc.nr_to_write = 0;

 might_sleep();
 sync_inode(inode, &wbc);
}
