
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct file {int dummy; } ;


 int FYI ;
 int cifs_dbg (int ,char*,int) ;
 int cifs_file_vm_ops ;
 int cifs_revalidate_file (struct file*) ;
 int free_xid (int) ;
 int generic_file_mmap (struct file*,struct vm_area_struct*) ;
 int get_xid () ;

int cifs_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 int rc, xid;

 xid = get_xid();

 rc = cifs_revalidate_file(file);
 if (rc)
  cifs_dbg(FYI, "Validation prior to mmap failed, error=%d\n",
    rc);
 if (!rc)
  rc = generic_file_mmap(file, vma);
 if (!rc)
  vma->vm_ops = &cifs_file_vm_ops;

 free_xid(xid);
 return rc;
}
