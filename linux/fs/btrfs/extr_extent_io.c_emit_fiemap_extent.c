
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct fiemap_extent_info {int dummy; } ;
struct fiemap_cache {int cached; scalar_t__ offset; scalar_t__ len; scalar_t__ phys; int flags; } ;


 int EINVAL ;
 int FIEMAP_EXTENT_LAST ;
 int WARN_ON (int) ;
 int fiemap_fill_next_extent (struct fiemap_extent_info*,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int emit_fiemap_extent(struct fiemap_extent_info *fieinfo,
    struct fiemap_cache *cache,
    u64 offset, u64 phys, u64 len, u32 flags)
{
 int ret = 0;

 if (!cache->cached)
  goto assign;
 if (cache->offset + cache->len > offset) {
  WARN_ON(1);
  return -EINVAL;
 }
 if (cache->offset + cache->len == offset &&
     cache->phys + cache->len == phys &&
     (cache->flags & ~FIEMAP_EXTENT_LAST) ==
   (flags & ~FIEMAP_EXTENT_LAST)) {
  cache->len += len;
  cache->flags |= flags;
  goto try_submit_last;
 }


 ret = fiemap_fill_next_extent(fieinfo, cache->offset, cache->phys,
          cache->len, cache->flags);
 cache->cached = 0;
 if (ret)
  return ret;
assign:
 cache->cached = 1;
 cache->offset = offset;
 cache->phys = phys;
 cache->len = len;
 cache->flags = flags;
try_submit_last:
 if (cache->flags & FIEMAP_EXTENT_LAST) {
  ret = fiemap_fill_next_extent(fieinfo, cache->offset,
    cache->phys, cache->len, cache->flags);
  cache->cached = 0;
 }
 return ret;
}
