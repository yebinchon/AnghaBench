
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_pmem {int lbasize; } ;
struct nd_namespace_blk {int lbasize; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 int blk_lbasize_supported ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 int nd_size_select_show (int ,int ,char*) ;
 int pmem_lbasize_supported ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;

__attribute__((used)) static ssize_t sector_size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 if (is_namespace_blk(dev)) {
  struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);

  return nd_size_select_show(nsblk->lbasize,
    blk_lbasize_supported, buf);
 }

 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  return nd_size_select_show(nspm->lbasize,
    pmem_lbasize_supported, buf);
 }
 return -ENXIO;
}
