
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nd_region {struct nd_interleave_set* nd_set; } ;
struct nd_namespace_index {int minor; int major; } ;
struct nd_interleave_set {int cookie2; int cookie1; } ;


 int __le16_to_cpu (int ) ;

u64 nd_region_interleave_set_cookie(struct nd_region *nd_region,
  struct nd_namespace_index *nsindex)
{
 struct nd_interleave_set *nd_set = nd_region->nd_set;

 if (!nd_set)
  return 0;

 if (nsindex && __le16_to_cpu(nsindex->major) == 1
   && __le16_to_cpu(nsindex->minor) == 1)
  return nd_set->cookie1;
 return nd_set->cookie2;
}
