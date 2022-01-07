
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ffs_lock ;
 int mutex_lock (int *) ;

__attribute__((used)) static inline void ffs_dev_lock(void)
{
 mutex_lock(&ffs_lock);
}
