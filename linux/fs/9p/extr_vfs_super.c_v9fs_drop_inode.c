
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {scalar_t__ cache; } ;
struct inode {int dummy; } ;


 scalar_t__ CACHE_FSCACHE ;
 scalar_t__ CACHE_LOOSE ;
 int generic_drop_inode (struct inode*) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;

__attribute__((used)) static int v9fs_drop_inode(struct inode *inode)
{
 struct v9fs_session_info *v9ses;
 v9ses = v9fs_inode2v9ses(inode);
 if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
  return generic_drop_inode(inode);





 return 1;
}
