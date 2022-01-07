
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cachefiles_cache {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* cachefiles_check_active (struct cachefiles_cache*,struct dentry*,char*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_unlock (int ) ;

int cachefiles_check_in_use(struct cachefiles_cache *cache, struct dentry *dir,
       char *filename)
{
 struct dentry *victim;




 victim = cachefiles_check_active(cache, dir, filename);
 if (IS_ERR(victim))
  return PTR_ERR(victim);

 inode_unlock(d_inode(dir));
 dput(victim);

 return 0;
}
