
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
struct dfs_info3_param {int dummy; } ;
struct dfs_cache_tgt_list {int dummy; } ;
struct dfs_cache_entry {int dummy; } ;
struct cifs_ses {int dummy; } ;


 int EINVAL ;
 int IS_ERR (struct dfs_cache_entry*) ;
 int PTR_ERR (struct dfs_cache_entry*) ;
 int dfs_cache_list_lock ;
 struct dfs_cache_entry* do_dfs_cache_find (unsigned int const,struct cifs_ses*,struct nls_table const*,int,char*,int) ;
 int free_normalized_path (char const*,char*) ;
 int get_normalized_path (char const*,char**) ;
 int get_tgt_list (struct dfs_cache_entry*,struct dfs_cache_tgt_list*) ;
 int get_tgt_name (struct dfs_cache_entry*) ;
 int is_path_valid (char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_ref (char const*,struct dfs_cache_entry*,struct dfs_info3_param*,int ) ;
 scalar_t__ unlikely (int) ;

int dfs_cache_find(const unsigned int xid, struct cifs_ses *ses,
     const struct nls_table *nls_codepage, int remap,
     const char *path, struct dfs_info3_param *ref,
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
 ce = do_dfs_cache_find(xid, ses, nls_codepage, remap, npath, 0);
 if (!IS_ERR(ce)) {
  if (ref)
   rc = setup_ref(path, ce, ref, get_tgt_name(ce));
  else
   rc = 0;
  if (!rc && tgt_list)
   rc = get_tgt_list(ce, tgt_list);
 } else {
  rc = PTR_ERR(ce);
 }
 mutex_unlock(&dfs_cache_list_lock);
 free_normalized_path(path, npath);
 return rc;
}
