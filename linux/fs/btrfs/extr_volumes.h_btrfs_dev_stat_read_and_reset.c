
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int dev_stats_ccnt; scalar_t__ dev_stat_values; } ;


 int atomic_inc (int *) ;
 int atomic_xchg (scalar_t__,int ) ;

__attribute__((used)) static inline int btrfs_dev_stat_read_and_reset(struct btrfs_device *dev,
      int index)
{
 int ret;

 ret = atomic_xchg(dev->dev_stat_values + index, 0);







 atomic_inc(&dev->dev_stats_ccnt);
 return ret;
}
