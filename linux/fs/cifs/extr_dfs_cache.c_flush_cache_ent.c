
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_cache_entry {int ce_rcu; int ce_path; int ce_hlist; } ;


 int call_rcu (int *,int ) ;
 int dfs_cache_count ;
 int free_cache_entry ;
 int free_tgts (struct dfs_cache_entry*) ;
 int hlist_del_init_rcu (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int kfree_const (int ) ;

__attribute__((used)) static inline void flush_cache_ent(struct dfs_cache_entry *ce)
{
 if (hlist_unhashed(&ce->ce_hlist))
  return;

 hlist_del_init_rcu(&ce->ce_hlist);
 kfree_const(ce->ce_path);
 free_tgts(ce);
 dfs_cache_count--;
 call_rcu(&ce->ce_rcu, free_cache_entry);
}
