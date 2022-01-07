
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {struct dentry* d_parent; } ;
struct TYPE_2__ {int flags; int debug_id; } ;
struct cachefiles_object {struct dentry* dentry; TYPE_1__ fscache; } ;
struct cachefiles_cache {int dummy; } ;


 int ASSERT (struct dentry*) ;
 int FSCACHE_OBJECT_KILLED_BY_CACHE ;
 int FSCACHE_OBJECT_WAS_RETIRED ;
 int I_MUTEX_PARENT ;
 int _debug (char*) ;
 int _enter (char*,int ,struct dentry*) ;
 int _leave (char*,int) ;
 int cachefiles_bury_object (struct cachefiles_cache*,struct cachefiles_object*,struct dentry*,struct dentry*,int,int ) ;
 struct dentry* d_backing_inode (struct dentry*) ;
 int d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 scalar_t__ test_bit (int ,int *) ;

int cachefiles_delete_object(struct cachefiles_cache *cache,
        struct cachefiles_object *object)
{
 struct dentry *dir;
 int ret;

 _enter(",OBJ%x{%p}", object->fscache.debug_id, object->dentry);

 ASSERT(object->dentry);
 ASSERT(d_backing_inode(object->dentry));
 ASSERT(object->dentry->d_parent);

 dir = dget_parent(object->dentry);

 inode_lock_nested(d_inode(dir), I_MUTEX_PARENT);

 if (test_bit(FSCACHE_OBJECT_KILLED_BY_CACHE, &object->fscache.flags)) {


  _debug("object preemptively buried");
  inode_unlock(d_inode(dir));
  ret = 0;
 } else {


  if (dir == object->dentry->d_parent) {
   ret = cachefiles_bury_object(cache, object, dir,
           object->dentry, 0,
           FSCACHE_OBJECT_WAS_RETIRED);
  } else {



   inode_unlock(d_inode(dir));
   ret = 0;
  }
 }

 dput(dir);
 _leave(" = %d", ret);
 return ret;
}
