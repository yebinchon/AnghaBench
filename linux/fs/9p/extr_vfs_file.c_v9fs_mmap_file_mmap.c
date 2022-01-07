
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int * vm_ops; } ;
struct v9fs_inode {int v_mutex; void* writeback_fid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 int PTR_ERR (struct p9_fid*) ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int VM_SHARED ;
 int VM_WRITE ;
 int file_dentry (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v9fs_mmap_file_vm_ops ;
 struct p9_fid* v9fs_writeback_fid (int ) ;

__attribute__((used)) static int
v9fs_mmap_file_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int retval;
 struct inode *inode;
 struct v9fs_inode *v9inode;
 struct p9_fid *fid;

 inode = file_inode(filp);
 v9inode = V9FS_I(inode);
 mutex_lock(&v9inode->v_mutex);
 if (!v9inode->writeback_fid &&
     (vma->vm_flags & VM_SHARED) &&
     (vma->vm_flags & VM_WRITE)) {







  fid = v9fs_writeback_fid(file_dentry(filp));
  if (IS_ERR(fid)) {
   retval = PTR_ERR(fid);
   mutex_unlock(&v9inode->v_mutex);
   return retval;
  }
  v9inode->writeback_fid = (void *) fid;
 }
 mutex_unlock(&v9inode->v_mutex);

 retval = generic_file_mmap(filp, vma);
 if (!retval)
  vma->vm_ops = &v9fs_mmap_file_vm_ops;

 return retval;
}
