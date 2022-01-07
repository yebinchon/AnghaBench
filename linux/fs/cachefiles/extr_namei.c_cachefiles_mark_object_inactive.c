
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct cachefiles_object {int flags; int active_node; struct dentry* dentry; } ;
struct cachefiles_cache {int f_released; int b_released; int active_lock; int active_nodes; } ;
typedef int blkcnt_t ;


 int CACHEFILES_OBJECT_ACTIVE ;
 scalar_t__ atomic_inc_return (int *) ;
 int atomic_long_add (int ,int *) ;
 int cachefiles_state_changed (struct cachefiles_cache*) ;
 int clear_bit (int ,int *) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int rb_erase (int *,int *) ;
 int trace_cachefiles_mark_inactive (struct cachefiles_object*,struct dentry*,struct inode*) ;
 int wake_up_bit (int *,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void cachefiles_mark_object_inactive(struct cachefiles_cache *cache,
         struct cachefiles_object *object,
         blkcnt_t i_blocks)
{
 struct dentry *dentry = object->dentry;
 struct inode *inode = d_backing_inode(dentry);

 trace_cachefiles_mark_inactive(object, dentry, inode);

 write_lock(&cache->active_lock);
 rb_erase(&object->active_node, &cache->active_nodes);
 clear_bit(CACHEFILES_OBJECT_ACTIVE, &object->flags);
 write_unlock(&cache->active_lock);

 wake_up_bit(&object->flags, CACHEFILES_OBJECT_ACTIVE);




 atomic_long_add(i_blocks, &cache->b_released);
 if (atomic_inc_return(&cache->f_released))
  cachefiles_state_changed(cache);
}
