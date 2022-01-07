
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int dummy; } ;
struct nd_btt {struct nd_namespace_common* ndns; } ;
struct arena_info {struct nd_btt* nd_btt; } ;
typedef int resource_size_t ;


 int adjust_initial_offset (struct nd_btt*,int ) ;
 int nvdimm_write_bytes (struct nd_namespace_common*,int ,void*,size_t,unsigned long) ;

__attribute__((used)) static int arena_write_bytes(struct arena_info *arena, resource_size_t offset,
  void *buf, size_t n, unsigned long flags)
{
 struct nd_btt *nd_btt = arena->nd_btt;
 struct nd_namespace_common *ndns = nd_btt->ndns;


 offset = adjust_initial_offset(nd_btt, offset);
 return nvdimm_write_bytes(ndns, offset, buf, n, flags);
}
