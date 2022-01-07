
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
struct file {int f_mode; } ;
typedef int fl_owner_t ;


 int FMODE_WRITE ;
 int FYI ;
 int cifs_dbg (int ,char*,struct inode*,struct file*,int) ;
 struct inode* file_inode (struct file*) ;
 int filemap_write_and_wait (int ) ;

int cifs_flush(struct file *file, fl_owner_t id)
{
 struct inode *inode = file_inode(file);
 int rc = 0;

 if (file->f_mode & FMODE_WRITE)
  rc = filemap_write_and_wait(inode->i_mapping);

 cifs_dbg(FYI, "Flush inode %p file %p rc %d\n", inode, file, rc);

 return rc;
}
