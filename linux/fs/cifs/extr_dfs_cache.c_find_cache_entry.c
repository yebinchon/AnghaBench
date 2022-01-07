
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_cache_entry {int dummy; } ;


 struct dfs_cache_entry* __find_cache_entry (unsigned int,char const*) ;
 unsigned int cache_entry_hash (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline struct dfs_cache_entry *find_cache_entry(const char *path,
             unsigned int *hash)
{
 *hash = cache_entry_hash(path, strlen(path));
 return __find_cache_entry(*hash, path);
}
