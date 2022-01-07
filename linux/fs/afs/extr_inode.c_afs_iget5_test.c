
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct afs_vnode {int fid; } ;
struct afs_iget_data {int fid; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 scalar_t__ memcmp (int *,int *,int) ;

int afs_iget5_test(struct inode *inode, void *opaque)
{
 struct afs_iget_data *iget_data = opaque;
 struct afs_vnode *vnode = AFS_FS_I(inode);

 return memcmp(&vnode->fid, &iget_data->fid, sizeof(iget_data->fid)) == 0;
}
