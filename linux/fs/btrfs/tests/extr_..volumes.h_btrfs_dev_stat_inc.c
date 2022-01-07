
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int dev_stats_ccnt; int * dev_stat_values; } ;


 int atomic_inc (int *) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static inline void btrfs_dev_stat_inc(struct btrfs_device *dev,
          int index)
{
 atomic_inc(dev->dev_stat_values + index);






 smp_mb__before_atomic();
 atomic_inc(&dev->dev_stats_ccnt);
}
