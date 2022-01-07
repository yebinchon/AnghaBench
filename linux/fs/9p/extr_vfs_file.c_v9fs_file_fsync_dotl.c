
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct p9_fid* private_data; TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int P9_DEBUG_VFS ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int p9_client_fsync (struct p9_fid*,int) ;
 int p9_debug (int ,char*,struct file*,int) ;

int v9fs_file_fsync_dotl(struct file *filp, loff_t start, loff_t end,
    int datasync)
{
 struct p9_fid *fid;
 struct inode *inode = filp->f_mapping->host;
 int retval;

 retval = file_write_and_wait_range(filp, start, end);
 if (retval)
  return retval;

 inode_lock(inode);
 p9_debug(P9_DEBUG_VFS, "filp %p datasync %x\n", filp, datasync);

 fid = filp->private_data;

 retval = p9_client_fsync(fid, datasync);
 inode_unlock(inode);

 return retval;
}
