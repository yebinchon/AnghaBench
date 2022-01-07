
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct coda_inode_info {int c_cached_perm; int c_lock; int c_uid; int c_cached_epoch; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 int atomic_read (int *) ;
 int current_fsuid () ;
 int permission_epoch ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uid_eq (int ,int ) ;

void coda_cache_enter(struct inode *inode, int mask)
{
 struct coda_inode_info *cii = ITOC(inode);

 spin_lock(&cii->c_lock);
 cii->c_cached_epoch = atomic_read(&permission_epoch);
 if (!uid_eq(cii->c_uid, current_fsuid())) {
  cii->c_uid = current_fsuid();
                cii->c_cached_perm = mask;
        } else
                cii->c_cached_perm |= mask;
 spin_unlock(&cii->c_lock);
}
