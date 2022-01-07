
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ffs_lock ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void ffs_dev_unlock(void)
{
 mutex_unlock(&ffs_lock);
}
