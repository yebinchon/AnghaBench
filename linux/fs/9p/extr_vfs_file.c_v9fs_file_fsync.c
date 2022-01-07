
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_wstat {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct p9_fid* private_data; TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int P9_DEBUG_VFS ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int p9_client_wstat (struct p9_fid*,struct p9_wstat*) ;
 int p9_debug (int ,char*,struct file*,int) ;
 int v9fs_blank_wstat (struct p9_wstat*) ;

__attribute__((used)) static int v9fs_file_fsync(struct file *filp, loff_t start, loff_t end,
      int datasync)
{
 struct p9_fid *fid;
 struct inode *inode = filp->f_mapping->host;
 struct p9_wstat wstat;
 int retval;

 retval = file_write_and_wait_range(filp, start, end);
 if (retval)
  return retval;

 inode_lock(inode);
 p9_debug(P9_DEBUG_VFS, "filp %p datasync %x\n", filp, datasync);

 fid = filp->private_data;
 v9fs_blank_wstat(&wstat);

 retval = p9_client_wstat(fid, &wstat);
 inode_unlock(inode);

 return retval;
}
