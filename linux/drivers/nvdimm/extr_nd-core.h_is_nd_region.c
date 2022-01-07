
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ is_nd_blk (struct device*) ;
 scalar_t__ is_nd_pmem (struct device*) ;
 scalar_t__ is_nd_volatile (struct device*) ;

__attribute__((used)) static inline bool is_nd_region(struct device *dev)
{
 return is_nd_pmem(dev) || is_nd_blk(dev) || is_nd_volatile(dev);
}
