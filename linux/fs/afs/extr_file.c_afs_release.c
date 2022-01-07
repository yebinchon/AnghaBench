
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; struct afs_file* private_data; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_file {int key; scalar_t__ wb; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int FMODE_WRITE ;
 int _enter (char*,int ,int ) ;
 int _leave (char*,int) ;
 int afs_prune_wb_keys (struct afs_vnode*) ;
 int afs_put_wb_key (scalar_t__) ;
 int key_put (int ) ;
 int kfree (struct afs_file*) ;
 int vfs_fsync (struct file*,int ) ;

int afs_release(struct inode *inode, struct file *file)
{
 struct afs_vnode *vnode = AFS_FS_I(inode);
 struct afs_file *af = file->private_data;
 int ret = 0;

 _enter("{%llx:%llu},", vnode->fid.vid, vnode->fid.vnode);

 if ((file->f_mode & FMODE_WRITE))
  ret = vfs_fsync(file, 0);

 file->private_data = ((void*)0);
 if (af->wb)
  afs_put_wb_key(af->wb);
 key_put(af->key);
 kfree(af);
 afs_prune_wb_keys(vnode);
 _leave(" = %d", ret);
 return ret;
}
