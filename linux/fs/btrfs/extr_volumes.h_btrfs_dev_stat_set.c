
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int dev_stats_ccnt; scalar_t__ dev_stat_values; } ;


 int atomic_inc (int *) ;
 int atomic_set (scalar_t__,unsigned long) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static inline void btrfs_dev_stat_set(struct btrfs_device *dev,
          int index, unsigned long val)
{
 atomic_set(dev->dev_stat_values + index, val);






 smp_mb__before_atomic();
 atomic_inc(&dev->dev_stats_ccnt);
}
