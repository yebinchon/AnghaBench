
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int fscache; } ;
struct TYPE_2__ {int version; int path; } ;
struct v9fs_inode {scalar_t__ fscache; int vfs_inode; TYPE_1__ qid; } ;
struct inode {int i_mode; } ;


 int P9_DEBUG_FSC ;
 int S_ISREG (int ) ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 scalar_t__ fscache_acquire_cookie (int ,int *,int *,int,int *,int,struct v9fs_inode*,int ,int) ;
 int i_size_read (int *) ;
 int p9_debug (int ,char*,struct inode*,scalar_t__) ;
 int v9fs_cache_inode_index_def ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

void v9fs_cache_inode_get_cookie(struct inode *inode)
{
 struct v9fs_inode *v9inode;
 struct v9fs_session_info *v9ses;

 if (!S_ISREG(inode->i_mode))
  return;

 v9inode = V9FS_I(inode);
 if (v9inode->fscache)
  return;

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

 p9_debug(P9_DEBUG_FSC, "inode %p get cookie %p\n",
   inode, v9inode->fscache);
}
