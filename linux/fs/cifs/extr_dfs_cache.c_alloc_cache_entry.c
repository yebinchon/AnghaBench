
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_info3_param {int dummy; } ;
struct dfs_cache_entry {int ce_path; int ce_tlist; int ce_hlist; } ;


 int ENOMEM ;
 struct dfs_cache_entry* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int copy_ref_data (struct dfs_info3_param const*,int,struct dfs_cache_entry*,int *) ;
 int dfs_cache_slab ;
 int kfree_const (int ) ;
 int kmem_cache_free (int ,struct dfs_cache_entry*) ;
 struct dfs_cache_entry* kmem_cache_zalloc (int ,int ) ;
 int kstrdup_const (char const*,int ) ;

__attribute__((used)) static struct dfs_cache_entry *
alloc_cache_entry(const char *path, const struct dfs_info3_param *refs,
    int numrefs)
{
 struct dfs_cache_entry *ce;
 int rc;

 ce = kmem_cache_zalloc(dfs_cache_slab, GFP_KERNEL);
 if (!ce)
  return ERR_PTR(-ENOMEM);

 ce->ce_path = kstrdup_const(path, GFP_KERNEL);
 if (!ce->ce_path) {
  kmem_cache_free(dfs_cache_slab, ce);
  return ERR_PTR(-ENOMEM);
 }
 INIT_HLIST_NODE(&ce->ce_hlist);
 INIT_LIST_HEAD(&ce->ce_tlist);

 rc = copy_ref_data(refs, numrefs, ce, ((void*)0));
 if (rc) {
  kfree_const(ce->ce_path);
  kmem_cache_free(dfs_cache_slab, ce);
  ce = ERR_PTR(rc);
 }
 return ce;
}
