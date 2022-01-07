
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_cache_tgt {char* t_name; } ;
struct dfs_cache_entry {struct dfs_cache_tgt* ce_tgthint; } ;


 int ENOENT ;
 char* ERR_PTR (int ) ;

__attribute__((used)) static inline char *get_tgt_name(const struct dfs_cache_entry *ce)
{
 struct dfs_cache_tgt *t = ce->ce_tgthint;

 return t ? t->t_name : ERR_PTR(-ENOENT);
}
