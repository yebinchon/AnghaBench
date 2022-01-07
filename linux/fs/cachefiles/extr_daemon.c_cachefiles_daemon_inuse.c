
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; } ;
struct cred {int dummy; } ;
struct cachefiles_cache {int flags; } ;
struct TYPE_2__ {int fs; } ;


 int CACHEFILES_DEAD ;
 int CACHEFILES_READY ;
 int EINVAL ;
 int EIO ;
 int ENOTDIR ;
 int cachefiles_begin_secure (struct cachefiles_cache*,struct cred const**) ;
 int cachefiles_check_in_use (struct cachefiles_cache*,int ,char*) ;
 int cachefiles_end_secure (struct cachefiles_cache*,struct cred const*) ;
 TYPE_1__* current ;
 int d_can_lookup (int ) ;
 int get_fs_pwd (int ,struct path*) ;
 int path_put (struct path*) ;
 int pr_err (char*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cachefiles_daemon_inuse(struct cachefiles_cache *cache, char *args)
{
 struct path path;
 const struct cred *saved_cred;
 int ret;



 if (strchr(args, '/'))
  goto inval;

 if (!test_bit(CACHEFILES_READY, &cache->flags)) {
  pr_err("inuse applied to unready cache\n");
  return -EIO;
 }

 if (test_bit(CACHEFILES_DEAD, &cache->flags)) {
  pr_err("inuse applied to dead cache\n");
  return -EIO;
 }


 get_fs_pwd(current->fs, &path);

 if (!d_can_lookup(path.dentry))
  goto notdir;

 cachefiles_begin_secure(cache, &saved_cred);
 ret = cachefiles_check_in_use(cache, path.dentry, args);
 cachefiles_end_secure(cache, saved_cred);

 path_put(&path);

 return ret;

notdir:
 path_put(&path);
 pr_err("inuse command requires dirfd to be a directory\n");
 return -ENOTDIR;

inval:
 pr_err("inuse command requires dirfd and filename\n");
 return -EINVAL;
}
