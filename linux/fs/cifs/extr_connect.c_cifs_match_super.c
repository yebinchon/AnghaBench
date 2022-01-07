
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int dummy; } ;
struct super_block {int dummy; } ;
struct smb_vol {int dummy; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_mnt_data {struct smb_vol* vol; } ;
struct TCP_Server_Info {int dummy; } ;


 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 struct tcon_link* cifs_get_tlink (int ) ;
 int cifs_put_tlink (struct tcon_link*) ;
 int cifs_sb_master_tlink (struct cifs_sb_info*) ;
 int cifs_tcp_ses_lock ;
 int compare_mount_options (struct super_block*,struct cifs_mnt_data*) ;
 int match_prepath (struct super_block*,struct cifs_mnt_data*) ;
 int match_server (struct TCP_Server_Info*,struct smb_vol*) ;
 int match_session (struct cifs_ses*,struct smb_vol*) ;
 int match_tcon (struct cifs_tcon*,struct smb_vol*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int
cifs_match_super(struct super_block *sb, void *data)
{
 struct cifs_mnt_data *mnt_data = (struct cifs_mnt_data *)data;
 struct smb_vol *volume_info;
 struct cifs_sb_info *cifs_sb;
 struct TCP_Server_Info *tcp_srv;
 struct cifs_ses *ses;
 struct cifs_tcon *tcon;
 struct tcon_link *tlink;
 int rc = 0;

 spin_lock(&cifs_tcp_ses_lock);
 cifs_sb = CIFS_SB(sb);
 tlink = cifs_get_tlink(cifs_sb_master_tlink(cifs_sb));
 if (IS_ERR(tlink)) {
  spin_unlock(&cifs_tcp_ses_lock);
  return rc;
 }
 tcon = tlink_tcon(tlink);
 ses = tcon->ses;
 tcp_srv = ses->server;

 volume_info = mnt_data->vol;

 if (!match_server(tcp_srv, volume_info) ||
     !match_session(ses, volume_info) ||
     !match_tcon(tcon, volume_info) ||
     !match_prepath(sb, mnt_data)) {
  rc = 0;
  goto out;
 }

 rc = compare_mount_options(sb, mnt_data);
out:
 spin_unlock(&cifs_tcp_ses_lock);
 cifs_put_tlink(tlink);
 return rc;
}
