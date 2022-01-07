
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dfs_info3_param {int dummy; } ;
struct dfs_cache_vol_info {int dummy; } ;
struct dfs_cache_entry {TYPE_2__* server; } ;
struct dfs_cache {int dc_nlsc; } ;
struct cifs_tcon {char* dfs_path; int remap; struct dfs_cache_entry* ses; } ;
struct cifs_ses {TYPE_2__* server; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_dfs_refer ) (unsigned int,struct dfs_cache_entry*,char*,struct dfs_info3_param**,int*,int ,int ) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct dfs_cache_entry*) ;
 int PTR_ERR (struct dfs_cache_entry*) ;
 struct dfs_cache_entry* __update_cache_entry (char*,struct dfs_info3_param*,int) ;
 int cache_entry_expired (struct dfs_cache_entry*) ;
 int cifs_put_smb_ses (struct dfs_cache_entry*) ;
 int dfs_cache_list_lock ;
 int dump_refs (struct dfs_info3_param*,int) ;
 struct dfs_cache_entry* find_cache_entry (char*,unsigned int*) ;
 struct dfs_cache_entry* find_root_ses (struct dfs_cache_vol_info*,struct cifs_tcon*,char*) ;
 int free_dfs_info_array (struct dfs_info3_param*,int) ;
 int free_normalized_path (char*,char*) ;
 int free_xid (unsigned int) ;
 int get_normalized_path (char*,char**) ;
 unsigned int get_xid () ;
 scalar_t__ is_dfs_link (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (unsigned int,struct dfs_cache_entry*,char*,struct dfs_info3_param**,int*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_refresh_tcon(struct dfs_cache *dc, struct dfs_cache_vol_info *vi,
       struct cifs_tcon *tcon)
{
 int rc = 0;
 unsigned int xid;
 char *path, *npath;
 unsigned int h;
 struct dfs_cache_entry *ce;
 struct dfs_info3_param *refs = ((void*)0);
 int numrefs = 0;
 struct cifs_ses *root_ses = ((void*)0), *ses;

 xid = get_xid();

 path = tcon->dfs_path + 1;

 rc = get_normalized_path(path, &npath);
 if (rc)
  goto out;

 mutex_lock(&dfs_cache_list_lock);
 ce = find_cache_entry(npath, &h);
 mutex_unlock(&dfs_cache_list_lock);

 if (IS_ERR(ce)) {
  rc = PTR_ERR(ce);
  goto out;
 }

 if (!cache_entry_expired(ce))
  goto out;


 if (is_dfs_link(npath)) {
  ses = root_ses = find_root_ses(vi, tcon, npath);
  if (IS_ERR(ses)) {
   rc = PTR_ERR(ses);
   root_ses = ((void*)0);
   goto out;
  }
 } else {
  ses = tcon->ses;
 }

 if (unlikely(!ses->server->ops->get_dfs_refer)) {
  rc = -EOPNOTSUPP;
 } else {
  rc = ses->server->ops->get_dfs_refer(xid, ses, path, &refs,
           &numrefs, dc->dc_nlsc,
           tcon->remap);
  if (!rc) {
   mutex_lock(&dfs_cache_list_lock);
   ce = __update_cache_entry(npath, refs, numrefs);
   mutex_unlock(&dfs_cache_list_lock);
   dump_refs(refs, numrefs);
   free_dfs_info_array(refs, numrefs);
   if (IS_ERR(ce))
    rc = PTR_ERR(ce);
  }
 }

out:
 if (root_ses)
  cifs_put_smb_ses(root_ses);

 free_xid(xid);
 free_normalized_path(path, npath);
}
