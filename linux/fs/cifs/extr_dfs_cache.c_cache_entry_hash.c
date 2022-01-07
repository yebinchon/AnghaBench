
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFS_CACHE_HTABLE_SIZE ;
 unsigned int jhash (void const*,int,int ) ;

__attribute__((used)) static inline unsigned int cache_entry_hash(const void *data, int size)
{
 unsigned int h;

 h = jhash(data, size, 0);
 return h & (DFS_CACHE_HTABLE_SIZE - 1);
}
