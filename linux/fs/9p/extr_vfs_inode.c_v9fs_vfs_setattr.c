
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct v9fs_session_info {int dummy; } ;
struct p9_wstat {scalar_t__ length; int n_gid; int n_uid; int atime; int mtime; int mode; } ;
struct p9_fid {int dummy; } ;
struct TYPE_10__ {int tv_sec; } ;
struct TYPE_9__ {int tv_sec; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_gid; int ia_uid; TYPE_2__ ia_atime; TYPE_1__ ia_mtime; int ia_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_11__ {int i_mapping; } ;


 int ATTR_ATIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_VFS ;
 int PTR_ERR (struct p9_fid*) ;
 TYPE_3__* d_inode (struct dentry*) ;
 scalar_t__ d_is_reg (struct dentry*) ;
 int filemap_write_and_wait (int ) ;
 scalar_t__ i_size_read (TYPE_3__*) ;
 int mark_inode_dirty (TYPE_3__*) ;
 int p9_client_wstat (struct p9_fid*,struct p9_wstat*) ;
 int p9_debug (int ,char*) ;
 int setattr_copy (TYPE_3__*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (TYPE_3__*,scalar_t__) ;
 int unixmode2p9mode (struct v9fs_session_info*,int ) ;
 int v9fs_blank_wstat (struct p9_wstat*) ;
 struct v9fs_session_info* v9fs_dentry2v9ses (struct dentry*) ;
 struct p9_fid* v9fs_fid_lookup (struct dentry*) ;
 int v9fs_invalidate_inode_attr (TYPE_3__*) ;
 scalar_t__ v9fs_proto_dotu (struct v9fs_session_info*) ;

__attribute__((used)) static int v9fs_vfs_setattr(struct dentry *dentry, struct iattr *iattr)
{
 int retval;
 struct v9fs_session_info *v9ses;
 struct p9_fid *fid;
 struct p9_wstat wstat;

 p9_debug(P9_DEBUG_VFS, "\n");
 retval = setattr_prepare(dentry, iattr);
 if (retval)
  return retval;

 retval = -EPERM;
 v9ses = v9fs_dentry2v9ses(dentry);
 fid = v9fs_fid_lookup(dentry);
 if(IS_ERR(fid))
  return PTR_ERR(fid);

 v9fs_blank_wstat(&wstat);
 if (iattr->ia_valid & ATTR_MODE)
  wstat.mode = unixmode2p9mode(v9ses, iattr->ia_mode);

 if (iattr->ia_valid & ATTR_MTIME)
  wstat.mtime = iattr->ia_mtime.tv_sec;

 if (iattr->ia_valid & ATTR_ATIME)
  wstat.atime = iattr->ia_atime.tv_sec;

 if (iattr->ia_valid & ATTR_SIZE)
  wstat.length = iattr->ia_size;

 if (v9fs_proto_dotu(v9ses)) {
  if (iattr->ia_valid & ATTR_UID)
   wstat.n_uid = iattr->ia_uid;

  if (iattr->ia_valid & ATTR_GID)
   wstat.n_gid = iattr->ia_gid;
 }


 if (d_is_reg(dentry))
  filemap_write_and_wait(d_inode(dentry)->i_mapping);

 retval = p9_client_wstat(fid, &wstat);
 if (retval < 0)
  return retval;

 if ((iattr->ia_valid & ATTR_SIZE) &&
     iattr->ia_size != i_size_read(d_inode(dentry)))
  truncate_setsize(d_inode(dentry), iattr->ia_size);

 v9fs_invalidate_inode_attr(d_inode(dentry));

 setattr_copy(d_inode(dentry), iattr);
 mark_inode_dirty(d_inode(dentry));
 return 0;
}
