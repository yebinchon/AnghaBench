
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int dummy; } ;
struct inode {int i_generation; int i_ino; } ;
struct afs_vnode {int cb_lock; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int _enter (char*,int ,int ) ;
 struct inode* d_inode (int ) ;
 int done_seqretry (int *,int) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 scalar_t__ need_seqretry (int *,int) ;
 int read_seqbegin_or_lock (int *,int*) ;

int afs_getattr(const struct path *path, struct kstat *stat,
  u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct afs_vnode *vnode = AFS_FS_I(inode);
 int seq = 0;

 _enter("{ ino=%lu v=%u }", inode->i_ino, inode->i_generation);

 do {
  read_seqbegin_or_lock(&vnode->cb_lock, &seq);
  generic_fillattr(inode, stat);
 } while (need_seqretry(&vnode->cb_lock, seq));

 done_seqretry(&vnode->cb_lock, seq);
 return 0;
}
