
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct v9fs_inode {int v_mutex; void* writeback_fid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct p9_fid* private_data; } ;
typedef struct p9_fid dentry ;


 scalar_t__ CACHE_FSCACHE ;
 scalar_t__ CACHE_LOOSE ;
 int FMODE_CREATED ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 unsigned int O_ACCMODE ;
 unsigned int O_CREAT ;
 unsigned int O_RDONLY ;
 int PTR_ERR (struct p9_fid*) ;
 struct v9fs_inode* V9FS_I (int ) ;
 scalar_t__ d_in_lookup (struct p9_fid*) ;
 int d_inode (struct p9_fid*) ;
 scalar_t__ d_really_is_positive (struct p9_fid*) ;
 int dput (struct p9_fid*) ;
 int finish_no_open (struct file*,struct p9_fid*) ;
 int finish_open (struct file*,struct p9_fid*,int ) ;
 int generic_file_open ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p9_client_clunk (struct p9_fid*) ;
 int unixmode2p9mode (struct v9fs_session_info*,int ) ;
 int v9fs_cache_inode_set_cookie (int ,struct file*) ;
 struct p9_fid* v9fs_create (struct v9fs_session_info*,struct inode*,struct p9_fid*,int *,int ,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_invalidate_inode_attr (struct inode*) ;
 int v9fs_proto_dotu (struct v9fs_session_info*) ;
 int v9fs_uflags2omode (unsigned int,int ) ;
 struct p9_fid* v9fs_vfs_lookup (struct inode*,struct p9_fid*,int ) ;
 struct p9_fid* v9fs_writeback_fid (struct p9_fid*) ;

__attribute__((used)) static int
v9fs_vfs_atomic_open(struct inode *dir, struct dentry *dentry,
       struct file *file, unsigned flags, umode_t mode)
{
 int err;
 u32 perm;
 struct v9fs_inode *v9inode;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid, *inode_fid;
 struct dentry *res = ((void*)0);

 if (d_in_lookup(dentry)) {
  res = v9fs_vfs_lookup(dir, dentry, 0);
  if (IS_ERR(res))
   return PTR_ERR(res);

  if (res)
   dentry = res;
 }


 if (!(flags & O_CREAT) || d_really_is_positive(dentry))
  return finish_no_open(file, res);

 err = 0;

 v9ses = v9fs_inode2v9ses(dir);
 perm = unixmode2p9mode(v9ses, mode);
 fid = v9fs_create(v9ses, dir, dentry, ((void*)0), perm,
    v9fs_uflags2omode(flags,
      v9fs_proto_dotu(v9ses)));
 if (IS_ERR(fid)) {
  err = PTR_ERR(fid);
  fid = ((void*)0);
  goto error;
 }

 v9fs_invalidate_inode_attr(dir);
 v9inode = V9FS_I(d_inode(dentry));
 mutex_lock(&v9inode->v_mutex);
 if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
     !v9inode->writeback_fid &&
     ((flags & O_ACCMODE) != O_RDONLY)) {







  inode_fid = v9fs_writeback_fid(dentry);
  if (IS_ERR(inode_fid)) {
   err = PTR_ERR(inode_fid);
   mutex_unlock(&v9inode->v_mutex);
   goto error;
  }
  v9inode->writeback_fid = (void *) inode_fid;
 }
 mutex_unlock(&v9inode->v_mutex);
 err = finish_open(file, dentry, generic_file_open);
 if (err)
  goto error;

 file->private_data = fid;
 if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
  v9fs_cache_inode_set_cookie(d_inode(dentry), file);

 file->f_mode |= FMODE_CREATED;
out:
 dput(res);
 return err;

error:
 if (fid)
  p9_client_clunk(fid);
 goto out;
}
