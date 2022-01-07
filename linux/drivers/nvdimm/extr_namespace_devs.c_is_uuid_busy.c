
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nd_pfn {int * uuid; } ;
struct nd_namespace_pmem {int * uuid; } ;
struct nd_namespace_blk {int * uuid; } ;
struct nd_btt {int * uuid; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int NSLABEL_UUID_LEN ;
 scalar_t__ is_namespace_blk (struct device*) ;
 scalar_t__ is_namespace_pmem (struct device*) ;
 scalar_t__ is_nd_btt (struct device*) ;
 scalar_t__ is_nd_pfn (struct device*) ;
 scalar_t__ memcmp (int *,int *,int ) ;
 struct nd_btt* to_nd_btt (struct device*) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;
 struct nd_pfn* to_nd_pfn (struct device*) ;

__attribute__((used)) static int is_uuid_busy(struct device *dev, void *data)
{
 u8 *uuid1 = data, *uuid2 = ((void*)0);

 if (is_namespace_pmem(dev)) {
  struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);

  uuid2 = nspm->uuid;
 } else if (is_namespace_blk(dev)) {
  struct nd_namespace_blk *nsblk = to_nd_namespace_blk(dev);

  uuid2 = nsblk->uuid;
 } else if (is_nd_btt(dev)) {
  struct nd_btt *nd_btt = to_nd_btt(dev);

  uuid2 = nd_btt->uuid;
 } else if (is_nd_pfn(dev)) {
  struct nd_pfn *nd_pfn = to_nd_pfn(dev);

  uuid2 = nd_pfn->uuid;
 }

 if (uuid2 && memcmp(uuid1, uuid2, NSLABEL_UUID_LEN) == 0)
  return -EBUSY;

 return 0;
}
