
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct file_lock {int dummy; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifsFileInfo {int tlink; } ;
struct TYPE_2__ {scalar_t__ local_lease; } ;


 scalar_t__ CIFS_CACHE_READ (int ) ;
 scalar_t__ CIFS_CACHE_WRITE (int ) ;
 int CIFS_I (struct inode*) ;
 int EAGAIN ;
 int EINVAL ;
 long F_RDLCK ;
 long F_UNLCK ;
 long F_WRLCK ;
 int S_ISREG (int ) ;
 struct inode* file_inode (struct file*) ;
 int generic_setlease (struct file*,long,struct file_lock**,void**) ;
 TYPE_1__* tlink_tcon (int ) ;

__attribute__((used)) static int
cifs_setlease(struct file *file, long arg, struct file_lock **lease, void **priv)
{




 struct inode *inode = file_inode(file);
 struct cifsFileInfo *cfile = file->private_data;

 if (!(S_ISREG(inode->i_mode)))
  return -EINVAL;


 if (arg == F_UNLCK ||
     ((arg == F_RDLCK) && CIFS_CACHE_READ(CIFS_I(inode))) ||
     ((arg == F_WRLCK) && CIFS_CACHE_WRITE(CIFS_I(inode))))
  return generic_setlease(file, arg, lease, priv);
 else if (tlink_tcon(cfile->tlink)->local_lease &&
   !CIFS_CACHE_READ(CIFS_I(inode)))
  return generic_setlease(file, arg, lease, priv);
 else
  return -EAGAIN;
}
