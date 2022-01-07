
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int fscache; } ;
struct TYPE_2__ {int version; int path; } ;
struct v9fs_inode {int fscache_lock; struct fscache_cookie* fscache; int vfs_inode; TYPE_1__ qid; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;


 int P9_DEBUG_FSC ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 struct fscache_cookie* fscache_acquire_cookie (int ,int *,int *,int,int *,int,struct v9fs_inode*,int ,int) ;
 int fscache_relinquish_cookie (struct fscache_cookie*,int *,int) ;
 int i_size_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p9_debug (int ,char*,struct inode*,struct fscache_cookie*,struct fscache_cookie*) ;
 int v9fs_cache_inode_index_def ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

void v9fs_cache_inode_reset_cookie(struct inode *inode)
{
 struct v9fs_inode *v9inode = V9FS_I(inode);
 struct v9fs_session_info *v9ses;
 struct fscache_cookie *old;

 if (!v9inode->fscache)
  return;

 old = v9inode->fscache;

 mutex_lock(&v9inode->fscache_lock);
 fscache_relinquish_cookie(v9inode->fscache, ((void*)0), 1);

 v9ses = v9fs_inode2v9ses(inode);
 v9inode->fscache = fscache_acquire_cookie(v9ses->fscache,
        &v9fs_cache_inode_index_def,
        &v9inode->qid.path,
        sizeof(v9inode->qid.path),
        &v9inode->qid.version,
        sizeof(v9inode->qid.version),
        v9inode,
        i_size_read(&v9inode->vfs_inode),
        1);
 p9_debug(P9_DEBUG_FSC, "inode %p revalidating cookie old %p new %p\n",
   inode, old, v9inode->fscache);

 mutex_unlock(&v9inode->fscache_lock);
}
