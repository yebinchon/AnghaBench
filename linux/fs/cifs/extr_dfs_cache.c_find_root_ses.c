
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vol ;
struct smb_vol {int dummy; } ;
struct dfs_info3_param {int member_0; } ;
struct dfs_cache_vol_info {int vi_mntdata; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_ses {int dummy; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; } ;
struct TYPE_6__ {TYPE_2__* server; } ;
struct TYPE_5__ {TYPE_1__* vals; } ;
struct TYPE_4__ {scalar_t__ header_preamble_size; } ;


 scalar_t__ CifsGood ;
 int EHOSTDOWN ;
 struct cifs_ses* ERR_CAST (char*) ;
 struct cifs_ses* ERR_PTR (int) ;
 scalar_t__ IS_ERR (char*) ;
 scalar_t__ IS_ERR_OR_NULL (struct TCP_Server_Info*) ;
 int cifs_cleanup_volume_info_contents (struct smb_vol*) ;
 char* cifs_compose_mount_options (int ,char*,struct dfs_info3_param*,char**) ;
 struct TCP_Server_Info* cifs_find_tcp_session (struct smb_vol*) ;
 struct cifs_ses* cifs_get_smb_ses (struct TCP_Server_Info*,struct smb_vol*) ;
 int cifs_put_tcp_session (struct TCP_Server_Info*,int ) ;
 int cifs_setup_volume_info (struct smb_vol*,char*,char*,int) ;
 int dfs_cache_noreq_find (char*,struct dfs_info3_param*,int *) ;
 int free_dfs_info_param (struct dfs_info3_param*) ;
 char* get_dfs_root (char const*) ;
 int kfree (char*) ;
 int memset (struct smb_vol*,int ,int) ;

__attribute__((used)) static struct cifs_ses *find_root_ses(struct dfs_cache_vol_info *vi,
          struct cifs_tcon *tcon, const char *path)
{
 char *rpath;
 int rc;
 struct dfs_info3_param ref = {0};
 char *mdata = ((void*)0), *devname = ((void*)0);
 bool is_smb3 = tcon->ses->server->vals->header_preamble_size == 0;
 struct TCP_Server_Info *server;
 struct cifs_ses *ses;
 struct smb_vol vol;

 rpath = get_dfs_root(path);
 if (IS_ERR(rpath))
  return ERR_CAST(rpath);

 memset(&vol, 0, sizeof(vol));

 rc = dfs_cache_noreq_find(rpath, &ref, ((void*)0));
 if (rc) {
  ses = ERR_PTR(rc);
  goto out;
 }

 mdata = cifs_compose_mount_options(vi->vi_mntdata, rpath, &ref,
        &devname);
 free_dfs_info_param(&ref);

 if (IS_ERR(mdata)) {
  ses = ERR_CAST(mdata);
  mdata = ((void*)0);
  goto out;
 }

 rc = cifs_setup_volume_info(&vol, mdata, devname, is_smb3);
 kfree(devname);

 if (rc) {
  ses = ERR_PTR(rc);
  goto out;
 }

 server = cifs_find_tcp_session(&vol);
 if (IS_ERR_OR_NULL(server)) {
  ses = ERR_PTR(-EHOSTDOWN);
  goto out;
 }
 if (server->tcpStatus != CifsGood) {
  cifs_put_tcp_session(server, 0);
  ses = ERR_PTR(-EHOSTDOWN);
  goto out;
 }

 ses = cifs_get_smb_ses(server, &vol);

out:
 cifs_cleanup_volume_info_contents(&vol);
 kfree(mdata);
 kfree(rpath);

 return ses;
}
