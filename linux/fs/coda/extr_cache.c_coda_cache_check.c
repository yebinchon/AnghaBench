
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct coda_inode_info {int c_cached_perm; scalar_t__ c_cached_epoch; int c_lock; int c_uid; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 scalar_t__ atomic_read (int *) ;
 int current_fsuid () ;
 int permission_epoch ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ uid_eq (int ,int ) ;

int coda_cache_check(struct inode *inode, int mask)
{
 struct coda_inode_info *cii = ITOC(inode);
 int hit;

 spin_lock(&cii->c_lock);
 hit = (mask & cii->c_cached_perm) == mask &&
     uid_eq(cii->c_uid, current_fsuid()) &&
     cii->c_cached_epoch == atomic_read(&permission_epoch);
 spin_unlock(&cii->c_lock);

 return hit;
}
