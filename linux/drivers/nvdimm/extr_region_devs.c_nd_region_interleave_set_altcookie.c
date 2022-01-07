
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nd_region {struct nd_interleave_set* nd_set; } ;
struct nd_interleave_set {int altcookie; } ;



u64 nd_region_interleave_set_altcookie(struct nd_region *nd_region)
{
 struct nd_interleave_set *nd_set = nd_region->nd_set;

 if (nd_set)
  return nd_set->altcookie;
 return 0;
}
