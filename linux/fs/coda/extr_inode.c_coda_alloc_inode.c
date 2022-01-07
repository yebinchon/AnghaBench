
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct coda_inode_info {struct inode vfs_inode; int c_lock; scalar_t__ c_cached_perm; int c_uid; scalar_t__ c_flags; int c_fid; } ;
struct CodaFid {int dummy; } ;


 int GFP_KERNEL ;
 int GLOBAL_ROOT_UID ;
 int coda_inode_cachep ;
 struct coda_inode_info* kmem_cache_alloc (int ,int ) ;
 int memset (int *,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct inode *coda_alloc_inode(struct super_block *sb)
{
 struct coda_inode_info *ei;
 ei = kmem_cache_alloc(coda_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 memset(&ei->c_fid, 0, sizeof(struct CodaFid));
 ei->c_flags = 0;
 ei->c_uid = GLOBAL_ROOT_UID;
 ei->c_cached_perm = 0;
 spin_lock_init(&ei->c_lock);
 return &ei->vfs_inode;
}
