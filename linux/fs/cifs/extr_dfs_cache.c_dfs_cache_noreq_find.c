
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_info3_param {int dummy; } ;
struct dfs_cache_tgt_list {int dummy; } ;
struct dfs_cache_entry {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct dfs_cache_entry*) ;
 int PTR_ERR (struct dfs_cache_entry*) ;
 int dfs_cache_list_lock ;
 struct dfs_cache_entry* do_dfs_cache_find (int ,int *,int *,int ,char*,int) ;
 int free_normalized_path (char const*,char*) ;
 int get_normalized_path (char const*,char**) ;
 int get_tgt_list (struct dfs_cache_entry*,struct dfs_cache_tgt_list*) ;
 int get_tgt_name (struct dfs_cache_entry*) ;
 int is_path_valid (char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_ref (char const*,struct dfs_cache_entry*,struct dfs_info3_param*,int ) ;
 scalar_t__ unlikely (int) ;

int dfs_cache_noreq_find(const char *path, struct dfs_info3_param *ref,
    struct dfs_cache_tgt_list *tgt_list)
{
 int rc;
 char *npath;
 struct dfs_cache_entry *ce;

 if (unlikely(!is_path_valid(path)))
  return -EINVAL;

 rc = get_normalized_path(path, &npath);
 if (rc)
  return rc;

 mutex_lock(&dfs_cache_list_lock);
 ce = do_dfs_cache_find(0, ((void*)0), ((void*)0), 0, npath, 1);
 if (IS_ERR(ce)) {
  rc = PTR_ERR(ce);
  goto out;
 }

 if (ref)
  rc = setup_ref(path, ce, ref, get_tgt_name(ce));
 else
  rc = 0;
 if (!rc && tgt_list)
  rc = get_tgt_list(ce, tgt_list);
out:
 mutex_unlock(&dfs_cache_list_lock);
 free_normalized_path(path, npath);
 return rc;
}
