
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
typedef int loff_t ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int _enter (char*,int ,int ,struct file*,int) ;
 struct inode* file_inode (struct file*) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;

int afs_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = file_inode(file);
 struct afs_vnode *vnode = AFS_FS_I(inode);

 _enter("{%llx:%llu},{n=%pD},%d",
        vnode->fid.vid, vnode->fid.vnode, file,
        datasync);

 return file_write_and_wait_range(file, start, end);
}
