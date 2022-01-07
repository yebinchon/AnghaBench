
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cachefiles_cache {int dummy; } ;


 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ESTALE ;
 int FSCACHE_OBJECT_WAS_CULLED ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int _debug (char*,...) ;
 int _enter (char*,struct dentry*,char*) ;
 int _leave (char*,...) ;
 int cachefiles_bury_object (struct cachefiles_cache*,int *,struct dentry*,struct dentry*,int,int ) ;
 struct dentry* cachefiles_check_active (struct cachefiles_cache*,struct dentry*,char*) ;
 int cachefiles_remove_object_xattr (struct cachefiles_cache*,struct dentry*) ;
 scalar_t__ d_backing_inode (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_unlock (int ) ;
 int pr_err (char*,int) ;

int cachefiles_cull(struct cachefiles_cache *cache, struct dentry *dir,
      char *filename)
{
 struct dentry *victim;
 int ret;

 _enter(",%pd/,%s", dir, filename);

 victim = cachefiles_check_active(cache, dir, filename);
 if (IS_ERR(victim))
  return PTR_ERR(victim);

 _debug("victim -> %p %s",
        victim, d_backing_inode(victim) ? "positive" : "negative");




 _debug("victim is cullable");

 ret = cachefiles_remove_object_xattr(cache, victim);
 if (ret < 0)
  goto error_unlock;


 _debug("bury");

 ret = cachefiles_bury_object(cache, ((void*)0), dir, victim, 0,
         FSCACHE_OBJECT_WAS_CULLED);
 if (ret < 0)
  goto error;

 dput(victim);
 _leave(" = 0");
 return 0;

error_unlock:
 inode_unlock(d_inode(dir));
error:
 dput(victim);
 if (ret == -ENOENT) {

  _leave(" = -ESTALE [absent]");
  return -ESTALE;
 }

 if (ret != -ENOMEM) {
  pr_err("Internal error: %d\n", ret);
  ret = -EIO;
 }

 _leave(" = %d", ret);
 return ret;
}
