
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_cache_tgt_list {int tl_numtgts; } ;



__attribute__((used)) static inline int
dfs_cache_get_nr_tgts(const struct dfs_cache_tgt_list *tl)
{
 return tl ? tl->tl_numtgts : 0;
}
