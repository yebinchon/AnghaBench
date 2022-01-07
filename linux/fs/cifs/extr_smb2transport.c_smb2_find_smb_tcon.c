
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_ses {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;
typedef int __u64 ;
typedef int __u32 ;


 int cifs_tcp_ses_lock ;
 struct cifs_ses* smb2_find_smb_ses_unlocked (struct TCP_Server_Info*,int ) ;
 struct cifs_tcon* smb2_find_smb_sess_tcon_unlocked (struct cifs_ses*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct cifs_tcon *
smb2_find_smb_tcon(struct TCP_Server_Info *server, __u64 ses_id, __u32 tid)
{
 struct cifs_ses *ses;
 struct cifs_tcon *tcon;

 spin_lock(&cifs_tcp_ses_lock);
 ses = smb2_find_smb_ses_unlocked(server, ses_id);
 if (!ses) {
  spin_unlock(&cifs_tcp_ses_lock);
  return ((void*)0);
 }
 tcon = smb2_find_smb_sess_tcon_unlocked(ses, tid);
 spin_unlock(&cifs_tcp_ses_lock);

 return tcon;
}
