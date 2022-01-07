
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int rename_sem; int uname; } ;
struct p9_wstat {int name; int muid; } ;
struct p9_fid {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_2__ {int name; } ;
struct dentry {scalar_t__ d_parent; TYPE_1__ d_name; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EXDEV ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_ERROR ;
 int P9_DEBUG_VFS ;
 int PTR_ERR (struct p9_fid*) ;
 scalar_t__ S_ISDIR (int ) ;
 int clear_nlink (struct inode*) ;
 struct p9_fid* clone_fid (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int down_write (int *) ;
 int inc_nlink (struct inode*) ;
 int p9_client_clunk (struct p9_fid*) ;
 int p9_client_rename (struct p9_fid*,struct p9_fid*,int ) ;
 int p9_client_renameat (struct p9_fid*,int ,struct p9_fid*,int ) ;
 int p9_client_wstat (struct p9_fid*,struct p9_wstat*) ;
 int p9_debug (int ,char*) ;
 int up_write (int *) ;
 int v9fs_blank_wstat (struct p9_wstat*) ;
 int v9fs_dec_count (struct inode*) ;
 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_invalidate_inode_attr (struct inode*) ;
 int v9fs_parent_fid (struct dentry*) ;
 scalar_t__ v9fs_proto_dotl (struct v9fs_session_info*) ;

int
v9fs_vfs_rename(struct inode *old_dir, struct dentry *old_dentry,
  struct inode *new_dir, struct dentry *new_dentry,
  unsigned int flags)
{
 int retval;
 struct inode *old_inode;
 struct inode *new_inode;
 struct v9fs_session_info *v9ses;
 struct p9_fid *oldfid;
 struct p9_fid *olddirfid;
 struct p9_fid *newdirfid;
 struct p9_wstat wstat;

 if (flags)
  return -EINVAL;

 p9_debug(P9_DEBUG_VFS, "\n");
 retval = 0;
 old_inode = d_inode(old_dentry);
 new_inode = d_inode(new_dentry);
 v9ses = v9fs_inode2v9ses(old_inode);
 oldfid = v9fs_fid_lookup(old_dentry);
 if (IS_ERR(oldfid))
  return PTR_ERR(oldfid);

 olddirfid = clone_fid(v9fs_parent_fid(old_dentry));
 if (IS_ERR(olddirfid)) {
  retval = PTR_ERR(olddirfid);
  goto done;
 }

 newdirfid = clone_fid(v9fs_parent_fid(new_dentry));
 if (IS_ERR(newdirfid)) {
  retval = PTR_ERR(newdirfid);
  goto clunk_olddir;
 }

 down_write(&v9ses->rename_sem);
 if (v9fs_proto_dotl(v9ses)) {
  retval = p9_client_renameat(olddirfid, old_dentry->d_name.name,
         newdirfid, new_dentry->d_name.name);
  if (retval == -EOPNOTSUPP)
   retval = p9_client_rename(oldfid, newdirfid,
        new_dentry->d_name.name);
  if (retval != -EOPNOTSUPP)
   goto clunk_newdir;
 }
 if (old_dentry->d_parent != new_dentry->d_parent) {




  p9_debug(P9_DEBUG_ERROR, "old dir and new dir are different\n");
  retval = -EXDEV;
  goto clunk_newdir;
 }
 v9fs_blank_wstat(&wstat);
 wstat.muid = v9ses->uname;
 wstat.name = new_dentry->d_name.name;
 retval = p9_client_wstat(oldfid, &wstat);

clunk_newdir:
 if (!retval) {
  if (new_inode) {
   if (S_ISDIR(new_inode->i_mode))
    clear_nlink(new_inode);
   else
    v9fs_dec_count(new_inode);
  }
  if (S_ISDIR(old_inode->i_mode)) {
   if (!new_inode)
    inc_nlink(new_dir);
   v9fs_dec_count(old_dir);
  }
  v9fs_invalidate_inode_attr(old_inode);
  v9fs_invalidate_inode_attr(old_dir);
  v9fs_invalidate_inode_attr(new_dir);


  d_move(old_dentry, new_dentry);
 }
 up_write(&v9ses->rename_sem);
 p9_client_clunk(newdirfid);

clunk_olddir:
 p9_client_clunk(olddirfid);

done:
 return retval;
}
