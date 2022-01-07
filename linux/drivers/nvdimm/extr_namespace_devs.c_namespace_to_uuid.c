
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nd_namespace_pmem {int * uuid; } ;
struct nd_namespace_blk {int * uuid; } ;
struct device {int dummy; } ;


 int ENXIO ;
 int * ERR_PTR (int ) ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;

__attribute__((used)) static u8 *namespace_to_uuid(struct device *dev)
{
 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  return nspm->uuid;
 } else if (is_namespace_blk(dev)) {
  struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);

  return nsblk->uuid;
 } else
  return ERR_PTR(-ENXIO);
}
