
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int fid; } ;
struct inode {int dummy; } ;
struct file {struct p9_fid* private_data; } ;


 int P9_DEBUG_VFS ;
 int p9_client_clunk (struct p9_fid*) ;
 int p9_debug (int ,char*,struct inode*,struct file*,int) ;

int v9fs_dir_release(struct inode *inode, struct file *filp)
{
 struct p9_fid *fid;

 fid = filp->private_data;
 p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
   inode, filp, fid ? fid->fid : -1);
 if (fid)
  p9_client_clunk(fid);
 return 0;
}
