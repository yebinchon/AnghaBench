
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_ses {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;
typedef int __u64 ;


 int cifs_tcp_ses_lock ;
 struct cifs_ses* smb2_find_smb_ses_unlocked (struct TCP_Server_Info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct cifs_ses *
smb2_find_smb_ses(struct TCP_Server_Info *server, __u64 ses_id)
{
 struct cifs_ses *ses;

 spin_lock(&cifs_tcp_ses_lock);
 ses = smb2_find_smb_ses_unlocked(server, ses_id);
 spin_unlock(&cifs_tcp_ses_lock);

 return ses;
}
