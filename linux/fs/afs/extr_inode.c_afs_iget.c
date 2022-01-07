
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct afs_super_info* s_fs_info; } ;
struct key {int dummy; } ;
struct inode {int i_state; int i_flags; } ;
struct afs_vnode {int flags; } ;
struct afs_super_info {int volume; } ;
struct afs_status_cb {int dummy; } ;
struct afs_fid {int unique; int vnode; int vid; } ;
struct afs_iget_data {int volume; struct afs_fid fid; } ;
struct afs_cb_interest {int dummy; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int AFS_VNODE_UNSET ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int I_NEW ;
 int S_NOATIME ;
 int _debug (char*,struct inode*,int ,int ,int ) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,...) ;
 int afs_fetch_status (struct afs_vnode*,struct key*,int,int *) ;
 int afs_get_inode_cache (struct afs_vnode*) ;
 int afs_iget5_set ;
 int afs_iget5_test ;
 int afs_inode_init_from_status (struct afs_vnode*,struct key*,struct afs_cb_interest*,struct afs_vnode*,struct afs_status_cb*) ;
 int clear_bit (int ,int *) ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,struct afs_iget_data*) ;
 int iget_failed (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

struct inode *afs_iget(struct super_block *sb, struct key *key,
         struct afs_iget_data *iget_data,
         struct afs_status_cb *scb,
         struct afs_cb_interest *cbi,
         struct afs_vnode *parent_vnode)
{
 struct afs_super_info *as;
 struct afs_vnode *vnode;
 struct afs_fid *fid = &iget_data->fid;
 struct inode *inode;
 int ret;

 _enter(",{%llx:%llu.%u},,", fid->vid, fid->vnode, fid->unique);

 as = sb->s_fs_info;
 iget_data->volume = as->volume;

 inode = iget5_locked(sb, fid->vnode, afs_iget5_test, afs_iget5_set,
        iget_data);
 if (!inode) {
  _leave(" = -ENOMEM");
  return ERR_PTR(-ENOMEM);
 }

 _debug("GOT INODE %p { vl=%llx vn=%llx, u=%x }",
        inode, fid->vid, fid->vnode, fid->unique);

 vnode = AFS_FS_I(inode);


 if (!(inode->i_state & I_NEW)) {
  _leave(" = %p", inode);
  return inode;
 }

 if (!scb) {

  ret = afs_fetch_status(vnode, key, 1, ((void*)0));
  if (ret < 0)
   goto bad_inode;
 } else {
  ret = afs_inode_init_from_status(vnode, key, cbi, parent_vnode,
       scb);
  if (ret < 0)
   goto bad_inode;
 }

 afs_get_inode_cache(vnode);


 clear_bit(AFS_VNODE_UNSET, &vnode->flags);
 inode->i_flags |= S_NOATIME;
 unlock_new_inode(inode);
 _leave(" = %p", inode);
 return inode;


bad_inode:
 iget_failed(inode);
 _leave(" = %d [bad]", ret);
 return ERR_PTR(ret);
}
