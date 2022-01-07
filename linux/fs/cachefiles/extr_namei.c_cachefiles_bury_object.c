
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {struct dentry* d_parent; } ;
struct cachefiles_object {int dummy; } ;
struct cachefiles_cache {struct dentry* graveyard; int mnt; int gravecounter; } ;
typedef enum fscache_why_object_killed { ____Placeholder_fscache_why_object_killed } fscache_why_object_killed ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ IS_DEADDIR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int _debug (char*,...) ;
 int _enter (char*,struct dentry*,struct dentry*) ;
 int _leave (char*,...) ;
 scalar_t__ atomic_inc_return (int *) ;
 int cachefiles_io_error (struct cachefiles_cache*,char*,...) ;
 int cachefiles_mark_object_buried (struct cachefiles_cache*,struct dentry*,int) ;
 int cond_resched () ;
 int d_can_lookup (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 scalar_t__ d_is_positive (struct dentry*) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_unlock (int ) ;
 scalar_t__ ktime_get_real_seconds () ;
 struct dentry* lock_rename (struct dentry*,struct dentry*) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 int security_path_rename (struct path*,struct dentry*,struct path*,struct dentry*,int ) ;
 int security_path_unlink (struct path*,struct dentry*) ;
 int sprintf (char*,char*,int,int) ;
 int strlen (char*) ;
 int trace_cachefiles_rename (struct cachefiles_object*,struct dentry*,struct dentry*,int) ;
 int trace_cachefiles_unlink (struct cachefiles_object*,struct dentry*,int) ;
 int unlock_rename (struct dentry*,struct dentry*) ;
 int vfs_rename (int ,struct dentry*,int ,struct dentry*,int *,int ) ;
 int vfs_unlink (int ,struct dentry*,int *) ;

__attribute__((used)) static int cachefiles_bury_object(struct cachefiles_cache *cache,
      struct cachefiles_object *object,
      struct dentry *dir,
      struct dentry *rep,
      bool preemptive,
      enum fscache_why_object_killed why)
{
 struct dentry *grave, *trap;
 struct path path, path_to_graveyard;
 char nbuffer[8 + 8 + 1];
 int ret;

 _enter(",'%pd','%pd'", dir, rep);

 _debug("remove %p from %p", rep, dir);


 if (!d_is_dir(rep)) {
  _debug("unlink stale object");

  path.mnt = cache->mnt;
  path.dentry = dir;
  ret = security_path_unlink(&path, rep);
  if (ret < 0) {
   cachefiles_io_error(cache, "Unlink security error");
  } else {
   trace_cachefiles_unlink(object, rep, why);
   ret = vfs_unlink(d_inode(dir), rep, ((void*)0));

   if (preemptive)
    cachefiles_mark_object_buried(cache, rep, why);
  }

  inode_unlock(d_inode(dir));

  if (ret == -EIO)
   cachefiles_io_error(cache, "Unlink failed");

  _leave(" = %d", ret);
  return ret;
 }


 _debug("move stale object to graveyard");
 inode_unlock(d_inode(dir));

try_again:

 sprintf(nbuffer, "%08x%08x",
  (uint32_t) ktime_get_real_seconds(),
  (uint32_t) atomic_inc_return(&cache->gravecounter));


 trap = lock_rename(cache->graveyard, dir);


 if (rep->d_parent != dir || IS_DEADDIR(d_inode(rep))) {


  unlock_rename(cache->graveyard, dir);
  _leave(" = 0 [culled?]");
  return 0;
 }

 if (!d_can_lookup(cache->graveyard)) {
  unlock_rename(cache->graveyard, dir);
  cachefiles_io_error(cache, "Graveyard no longer a directory");
  return -EIO;
 }

 if (trap == rep) {
  unlock_rename(cache->graveyard, dir);
  cachefiles_io_error(cache, "May not make directory loop");
  return -EIO;
 }

 if (d_mountpoint(rep)) {
  unlock_rename(cache->graveyard, dir);
  cachefiles_io_error(cache, "Mountpoint in cache");
  return -EIO;
 }

 grave = lookup_one_len(nbuffer, cache->graveyard, strlen(nbuffer));
 if (IS_ERR(grave)) {
  unlock_rename(cache->graveyard, dir);

  if (PTR_ERR(grave) == -ENOMEM) {
   _leave(" = -ENOMEM");
   return -ENOMEM;
  }

  cachefiles_io_error(cache, "Lookup error %ld",
        PTR_ERR(grave));
  return -EIO;
 }

 if (d_is_positive(grave)) {
  unlock_rename(cache->graveyard, dir);
  dput(grave);
  grave = ((void*)0);
  cond_resched();
  goto try_again;
 }

 if (d_mountpoint(grave)) {
  unlock_rename(cache->graveyard, dir);
  dput(grave);
  cachefiles_io_error(cache, "Mountpoint in graveyard");
  return -EIO;
 }


 if (trap == grave) {
  unlock_rename(cache->graveyard, dir);
  dput(grave);
  cachefiles_io_error(cache, "May not make directory loop");
  return -EIO;
 }


 path.mnt = cache->mnt;
 path.dentry = dir;
 path_to_graveyard.mnt = cache->mnt;
 path_to_graveyard.dentry = cache->graveyard;
 ret = security_path_rename(&path, rep, &path_to_graveyard, grave, 0);
 if (ret < 0) {
  cachefiles_io_error(cache, "Rename security error %d", ret);
 } else {
  trace_cachefiles_rename(object, rep, grave, why);
  ret = vfs_rename(d_inode(dir), rep,
     d_inode(cache->graveyard), grave, ((void*)0), 0);
  if (ret != 0 && ret != -ENOMEM)
   cachefiles_io_error(cache,
         "Rename failed with error %d", ret);

  if (preemptive)
   cachefiles_mark_object_buried(cache, rep, why);
 }

 unlock_rename(cache->graveyard, dir);
 dput(grave);
 _leave(" = 0");
 return 0;
}
