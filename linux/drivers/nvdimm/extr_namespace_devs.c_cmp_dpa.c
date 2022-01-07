
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int start; } ;
struct TYPE_6__ {TYPE_2__ res; } ;
struct nd_namespace_pmem {TYPE_3__ nsio; } ;
struct nd_namespace_blk {TYPE_1__** res; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;
struct TYPE_4__ {int start; } ;


 scalar_t__ is_namespace_blk (struct device const*) ;
 scalar_t__ is_namespace_io (struct device const*) ;
 int memcmp (int *,int *,int) ;
 struct nd_namespace_blk* to_nd_namespace_blk (struct device const*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device const*) ;

__attribute__((used)) static int cmp_dpa(const void *a, const void *b)
{
 const struct device *dev_a = *(const struct device **) a;
 const struct device *dev_b = *(const struct device **) b;
 struct nd_namespace_blk *nsblk_a, *nsblk_b;
 struct nd_namespace_pmem *nspm_a, *nspm_b;

 if (is_namespace_io(dev_a))
  return 0;

 if (is_namespace_blk(dev_a)) {
  nsblk_a = to_nd_namespace_blk(dev_a);
  nsblk_b = to_nd_namespace_blk(dev_b);

  return memcmp(&nsblk_a->res[0]->start, &nsblk_b->res[0]->start,
    sizeof(resource_size_t));
 }

 nspm_a = to_nd_namespace_pmem(dev_a);
 nspm_b = to_nd_namespace_pmem(dev_b);

 return memcmp(&nspm_a->nsio.res.start, &nspm_b->nsio.res.start,
   sizeof(resource_size_t));
}
