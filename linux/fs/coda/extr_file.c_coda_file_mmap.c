
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {size_t vm_end; size_t vm_start; int vm_pgoff; TYPE_2__* vm_ops; struct file* vm_file; } ;
struct inode {int * i_mapping; int i_data; int i_sb; } ;
struct file {int f_mapping; TYPE_1__* f_op; } ;
struct TYPE_4__ {int close; int open; } ;
struct coda_vm_ops {TYPE_2__ vm_ops; int refcnt; struct file* coda_file; TYPE_2__* host_vm_ops; } ;
struct coda_inode_info {int c_lock; int c_mapcount; } ;
struct coda_file_info {int cfi_mapcount; int cfi_access_intent; struct file* cfi_container; } ;
typedef int loff_t ;
struct TYPE_3__ {int mmap; } ;


 int CODA_ACCESS_TYPE_MMAP ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct coda_inode_info* ITOC (struct inode*) ;
 int PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int atomic_set (int *,int) ;
 int call_mmap (struct file*,struct vm_area_struct*) ;
 struct coda_file_info* coda_ftoc (struct file*) ;
 int coda_i2f (struct inode*) ;
 int coda_vm_close ;
 int coda_vm_open ;
 struct inode* file_inode (struct file*) ;
 int fput (struct file*) ;
 struct file* get_file (struct file*) ;
 int kfree (struct coda_vm_ops*) ;
 struct coda_vm_ops* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int venus_access_intent (int ,int ,int *,size_t,int,int ) ;

__attribute__((used)) static int
coda_file_mmap(struct file *coda_file, struct vm_area_struct *vma)
{
 struct inode *coda_inode = file_inode(coda_file);
 struct coda_file_info *cfi = coda_ftoc(coda_file);
 struct file *host_file = cfi->cfi_container;
 struct inode *host_inode = file_inode(host_file);
 struct coda_inode_info *cii;
 struct coda_vm_ops *cvm_ops;
 loff_t ppos;
 size_t count;
 int ret;

 if (!host_file->f_op->mmap)
  return -ENODEV;

 if (WARN_ON(coda_file != vma->vm_file))
  return -EIO;

 count = vma->vm_end - vma->vm_start;
 ppos = vma->vm_pgoff * PAGE_SIZE;

 ret = venus_access_intent(coda_inode->i_sb, coda_i2f(coda_inode),
      &cfi->cfi_access_intent,
      count, ppos, CODA_ACCESS_TYPE_MMAP);
 if (ret)
  return ret;

 cvm_ops = kmalloc(sizeof(struct coda_vm_ops), GFP_KERNEL);
 if (!cvm_ops)
  return -ENOMEM;

 cii = ITOC(coda_inode);
 spin_lock(&cii->c_lock);
 coda_file->f_mapping = host_file->f_mapping;
 if (coda_inode->i_mapping == &coda_inode->i_data)
  coda_inode->i_mapping = host_inode->i_mapping;



 else if (coda_inode->i_mapping != host_inode->i_mapping) {
  spin_unlock(&cii->c_lock);
  kfree(cvm_ops);
  return -EBUSY;
 }


 cii->c_mapcount++;
 cfi->cfi_mapcount++;
 spin_unlock(&cii->c_lock);

 vma->vm_file = get_file(host_file);
 ret = call_mmap(vma->vm_file, vma);

 if (ret) {



  fput(host_file);
  kfree(cvm_ops);
 } else {

  cvm_ops->host_vm_ops = vma->vm_ops;
  if (vma->vm_ops)
   cvm_ops->vm_ops = *vma->vm_ops;

  cvm_ops->vm_ops.open = coda_vm_open;
  cvm_ops->vm_ops.close = coda_vm_close;
  cvm_ops->coda_file = coda_file;
  atomic_set(&cvm_ops->refcnt, 1);

  vma->vm_ops = &cvm_ops->vm_ops;
 }
 return ret;
}
