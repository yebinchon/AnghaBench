
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CIFS_CACHE_READ (int ) ;
 int CIFS_I (struct inode*) ;
 int cifs_file_vm_ops ;
 int cifs_zap_mapping (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int free_xid (int) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int get_xid () ;

int cifs_file_strict_mmap(struct file *file, struct vm_area_struct *vma)
{
 int xid, rc = 0;
 struct inode *inode = file_inode(file);

 xid = get_xid();

 if (!CIFS_CACHE_READ(CIFS_I(inode)))
  rc = cifs_zap_mapping(inode);
 if (!rc)
  rc = generic_file_mmap(file, vma);
 if (!rc)
  vma->vm_ops = &cifs_file_vm_ops;

 free_xid(xid);
 return rc;
}
