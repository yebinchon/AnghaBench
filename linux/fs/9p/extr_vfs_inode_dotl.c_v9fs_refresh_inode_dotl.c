
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {scalar_t__ cache; } ;
struct p9_stat_dotl {int st_mode; } ;
struct p9_fid {int dummy; } ;
struct inode {int i_mode; } ;


 scalar_t__ CACHE_FSCACHE ;
 scalar_t__ CACHE_LOOSE ;
 scalar_t__ IS_ERR (struct p9_stat_dotl*) ;
 int P9_STATS_ALL ;
 int PTR_ERR (struct p9_stat_dotl*) ;
 int S_IFMT ;
 unsigned int V9FS_STAT2INODE_KEEP_ISIZE ;
 int kfree (struct p9_stat_dotl*) ;
 struct p9_stat_dotl* p9_client_getattr_dotl (struct p9_fid*,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_stat2inode_dotl (struct p9_stat_dotl*,struct inode*,unsigned int) ;

int v9fs_refresh_inode_dotl(struct p9_fid *fid, struct inode *inode)
{
 struct p9_stat_dotl *st;
 struct v9fs_session_info *v9ses;
 unsigned int flags;

 v9ses = v9fs_inode2v9ses(inode);
 st = p9_client_getattr_dotl(fid, P9_STATS_ALL);
 if (IS_ERR(st))
  return PTR_ERR(st);



 if ((inode->i_mode & S_IFMT) != (st->st_mode & S_IFMT))
  goto out;





 flags = (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) ?
  V9FS_STAT2INODE_KEEP_ISIZE : 0;
 v9fs_stat2inode_dotl(st, inode, flags);
out:
 kfree(st);
 return 0;
}
