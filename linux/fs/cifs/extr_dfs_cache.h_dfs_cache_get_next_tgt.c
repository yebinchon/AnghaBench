
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_cache_tgt_list {int tl_list; } ;
struct dfs_cache_tgt_iterator {int it_list; } ;


 int it_list ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ list_is_last (int *,int *) ;
 struct dfs_cache_tgt_iterator* list_next_entry (struct dfs_cache_tgt_iterator*,int ) ;

__attribute__((used)) static inline struct dfs_cache_tgt_iterator *
dfs_cache_get_next_tgt(struct dfs_cache_tgt_list *tl,
         struct dfs_cache_tgt_iterator *it)
{
 if (!tl || list_empty(&tl->tl_list) || !it ||
     list_is_last(&it->it_list, &tl->tl_list))
  return ((void*)0);
 return list_next_entry(it, it_list);
}
