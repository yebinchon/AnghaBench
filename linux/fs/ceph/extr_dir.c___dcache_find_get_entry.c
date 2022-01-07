
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_data; } ;
struct dentry {int d_lockref; int d_lock; } ;
struct ceph_readdir_cache_control {int index; struct dentry** dentries; int page; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ loff_t ;


 int EAGAIN ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ ceph_dir_is_complete_ordered (struct inode*) ;
 int ceph_readdir_cache_release (struct ceph_readdir_cache_control*) ;
 struct inode* d_inode (struct dentry*) ;
 int dout (char*,scalar_t__) ;
 int find_lock_page (int *,scalar_t__) ;
 scalar_t__ i_size_read (struct inode*) ;
 struct dentry** kmap (int ) ;
 int lockref_get_not_dead (int *) ;
 scalar_t__ page_index (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (int ) ;

__attribute__((used)) static struct dentry *
__dcache_find_get_entry(struct dentry *parent, u64 idx,
   struct ceph_readdir_cache_control *cache_ctl)
{
 struct inode *dir = d_inode(parent);
 struct dentry *dentry;
 unsigned idx_mask = (PAGE_SIZE / sizeof(struct dentry *)) - 1;
 loff_t ptr_pos = idx * sizeof(struct dentry *);
 pgoff_t ptr_pgoff = ptr_pos >> PAGE_SHIFT;

 if (ptr_pos >= i_size_read(dir))
  return ((void*)0);

 if (!cache_ctl->page || ptr_pgoff != page_index(cache_ctl->page)) {
  ceph_readdir_cache_release(cache_ctl);
  cache_ctl->page = find_lock_page(&dir->i_data, ptr_pgoff);
  if (!cache_ctl->page) {
   dout(" page %lu not found\n", ptr_pgoff);
   return ERR_PTR(-EAGAIN);
  }


  unlock_page(cache_ctl->page);
  cache_ctl->dentries = kmap(cache_ctl->page);
 }

 cache_ctl->index = idx & idx_mask;

 rcu_read_lock();
 spin_lock(&parent->d_lock);


 if (ceph_dir_is_complete_ordered(dir) && ptr_pos < i_size_read(dir))
  dentry = cache_ctl->dentries[cache_ctl->index];
 else
  dentry = ((void*)0);
 spin_unlock(&parent->d_lock);
 if (dentry && !lockref_get_not_dead(&dentry->d_lockref))
  dentry = ((void*)0);
 rcu_read_unlock();
 return dentry ? : ERR_PTR(-EAGAIN);
}
