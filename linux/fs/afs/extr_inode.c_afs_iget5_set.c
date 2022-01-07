
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_generation; int i_ino; } ;
struct TYPE_2__ {int unique; int vnode; } ;
struct afs_vnode {int cb_s_break; int cb_v_break; int volume; TYPE_1__ fid; } ;
struct afs_iget_data {TYPE_1__ fid; int cb_s_break; int cb_v_break; int volume; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;

__attribute__((used)) static int afs_iget5_set(struct inode *inode, void *opaque)
{
 struct afs_iget_data *iget_data = opaque;
 struct afs_vnode *vnode = AFS_FS_I(inode);

 vnode->fid = iget_data->fid;
 vnode->volume = iget_data->volume;
 vnode->cb_v_break = iget_data->cb_v_break;
 vnode->cb_s_break = iget_data->cb_s_break;




 inode->i_ino = iget_data->fid.vnode;
 inode->i_generation = iget_data->fid.unique;
 return 0;
}
