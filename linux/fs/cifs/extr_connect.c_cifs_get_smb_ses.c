
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct smb_vol {int local_nls; int sign; int sectype; int linux_uid; int cred_uid; scalar_t__ domainauto; scalar_t__ domainname; scalar_t__ password; scalar_t__ username; } ;
struct cifs_ses {int smb_ses_list; int session_mutex; int sign; int sectype; int linux_uid; int cred_uid; scalar_t__ domainAuto; void* domainName; void* password; void* user_name; int serverName; struct TCP_Server_Info* server; scalar_t__ need_reconnect; int status; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct TCP_Server_Info {int smb_ses_list; TYPE_1__ dstaddr; } ;


 scalar_t__ AF_INET6 ;
 int ENOMEM ;
 struct cifs_ses* ERR_PTR (int) ;
 int FYI ;
 int GFP_KERNEL ;
 int cifs_dbg (int ,char*,...) ;
 struct cifs_ses* cifs_find_smb_ses (struct TCP_Server_Info*,struct smb_vol*) ;
 int cifs_negotiate_protocol (unsigned int,struct cifs_ses*) ;
 int cifs_put_smb_ses (struct cifs_ses*) ;
 int cifs_put_tcp_session (struct TCP_Server_Info*,int ) ;
 int cifs_setup_ipc (struct cifs_ses*,struct smb_vol*) ;
 int cifs_setup_session (unsigned int,struct cifs_ses*,int ) ;
 int cifs_tcp_ses_lock ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 void* kstrdup (scalar_t__,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cifs_ses* sesInfoAlloc () ;
 int sesInfoFree (struct cifs_ses*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int ,char*,int *) ;

struct cifs_ses *
cifs_get_smb_ses(struct TCP_Server_Info *server, struct smb_vol *volume_info)
{
 int rc = -ENOMEM;
 unsigned int xid;
 struct cifs_ses *ses;
 struct sockaddr_in *addr = (struct sockaddr_in *)&server->dstaddr;
 struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&server->dstaddr;

 xid = get_xid();

 ses = cifs_find_smb_ses(server, volume_info);
 if (ses) {
  cifs_dbg(FYI, "Existing smb sess found (status=%d)\n",
    ses->status);

  mutex_lock(&ses->session_mutex);
  rc = cifs_negotiate_protocol(xid, ses);
  if (rc) {
   mutex_unlock(&ses->session_mutex);

   cifs_put_smb_ses(ses);
   free_xid(xid);
   return ERR_PTR(rc);
  }
  if (ses->need_reconnect) {
   cifs_dbg(FYI, "Session needs reconnect\n");
   rc = cifs_setup_session(xid, ses,
      volume_info->local_nls);
   if (rc) {
    mutex_unlock(&ses->session_mutex);

    cifs_put_smb_ses(ses);
    free_xid(xid);
    return ERR_PTR(rc);
   }
  }
  mutex_unlock(&ses->session_mutex);


  cifs_put_tcp_session(server, 0);
  free_xid(xid);
  return ses;
 }

 cifs_dbg(FYI, "Existing smb sess not found\n");
 ses = sesInfoAlloc();
 if (ses == ((void*)0))
  goto get_ses_fail;


 ses->server = server;
 if (server->dstaddr.ss_family == AF_INET6)
  sprintf(ses->serverName, "%pI6", &addr6->sin6_addr);
 else
  sprintf(ses->serverName, "%pI4", &addr->sin_addr);

 if (volume_info->username) {
  ses->user_name = kstrdup(volume_info->username, GFP_KERNEL);
  if (!ses->user_name)
   goto get_ses_fail;
 }


 if (volume_info->password) {
  ses->password = kstrdup(volume_info->password, GFP_KERNEL);
  if (!ses->password)
   goto get_ses_fail;
 }
 if (volume_info->domainname) {
  ses->domainName = kstrdup(volume_info->domainname, GFP_KERNEL);
  if (!ses->domainName)
   goto get_ses_fail;
 }
 if (volume_info->domainauto)
  ses->domainAuto = volume_info->domainauto;
 ses->cred_uid = volume_info->cred_uid;
 ses->linux_uid = volume_info->linux_uid;

 ses->sectype = volume_info->sectype;
 ses->sign = volume_info->sign;
 mutex_lock(&ses->session_mutex);
 rc = cifs_negotiate_protocol(xid, ses);
 if (!rc)
  rc = cifs_setup_session(xid, ses, volume_info->local_nls);
 mutex_unlock(&ses->session_mutex);
 if (rc)
  goto get_ses_fail;


 spin_lock(&cifs_tcp_ses_lock);
 list_add(&ses->smb_ses_list, &server->smb_ses_list);
 spin_unlock(&cifs_tcp_ses_lock);

 free_xid(xid);

 cifs_setup_ipc(ses, volume_info);

 return ses;

get_ses_fail:
 sesInfoFree(ses);
 free_xid(xid);
 return ERR_PTR(rc);
}
