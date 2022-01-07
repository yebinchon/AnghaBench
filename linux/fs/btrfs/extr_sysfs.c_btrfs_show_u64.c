
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;
typedef int spinlock_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t btrfs_show_u64(u64 *value_ptr, spinlock_t *lock, char *buf)
{
 u64 val;
 if (lock)
  spin_lock(lock);
 val = *value_ptr;
 if (lock)
  spin_unlock(lock);
 return snprintf(buf, PAGE_SIZE, "%llu\n", val);
}
