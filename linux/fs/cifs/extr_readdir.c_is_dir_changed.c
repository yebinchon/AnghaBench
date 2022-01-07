
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cifsInodeInfo {scalar_t__ time; } ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 struct inode* file_inode (struct file*) ;

__attribute__((used)) static int is_dir_changed(struct file *file)
{
 struct inode *inode = file_inode(file);
 struct cifsInodeInfo *cifsInfo = CIFS_I(inode);

 if (cifsInfo->time == 0)
  return 1;
 else
  return 0;

}
