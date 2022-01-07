
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fiemap_extent_info {int dummy; } ;
struct fiemap_cache {int cached; int flags; int len; int phys; int offset; } ;


 int fiemap_fill_next_extent (struct fiemap_extent_info*,int ,int ,int ,int ) ;

__attribute__((used)) static int emit_last_fiemap_cache(struct fiemap_extent_info *fieinfo,
      struct fiemap_cache *cache)
{
 int ret;

 if (!cache->cached)
  return 0;

 ret = fiemap_fill_next_extent(fieinfo, cache->offset, cache->phys,
          cache->len, cache->flags);
 cache->cached = 0;
 if (ret > 0)
  ret = 0;
 return ret;
}
