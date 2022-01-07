
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cifs_ses {int session_mutex; int Suid; TYPE_3__* server; scalar_t__ need_reconnect; } ;
struct TYPE_7__ {scalar_t__ sign; } ;
struct TYPE_5__ {int Uid; int Flags2; int Mid; } ;
struct TYPE_6__ {int AndXCommand; TYPE_1__ hdr; } ;
typedef TYPE_2__ LOGOFF_ANDX_REQ ;


 int EAGAIN ;
 int EIO ;
 int FYI ;
 int SMBFLG2_SECURITY_SIGNATURE ;
 int SMB_COM_LOGOFF_ANDX ;
 int SendReceiveNoRsp (unsigned int const,struct cifs_ses*,char*,int ) ;
 int cifs_dbg (int ,char*) ;
 int cifs_small_buf_release (TYPE_2__*) ;
 int get_next_mid (TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int small_smb_init (int ,int,int *,void**) ;

int
CIFSSMBLogoff(const unsigned int xid, struct cifs_ses *ses)
{
 LOGOFF_ANDX_REQ *pSMB;
 int rc = 0;

 cifs_dbg(FYI, "In SMBLogoff for session disconnect\n");






 if (!ses || !ses->server)
  return -EIO;

 mutex_lock(&ses->session_mutex);
 if (ses->need_reconnect)
  goto session_already_dead;

 rc = small_smb_init(SMB_COM_LOGOFF_ANDX, 2, ((void*)0), (void **)&pSMB);
 if (rc) {
  mutex_unlock(&ses->session_mutex);
  return rc;
 }

 pSMB->hdr.Mid = get_next_mid(ses->server);

 if (ses->server->sign)
  pSMB->hdr.Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

 pSMB->hdr.Uid = ses->Suid;

 pSMB->AndXCommand = 0xFF;
 rc = SendReceiveNoRsp(xid, ses, (char *) pSMB, 0);
 cifs_small_buf_release(pSMB);
session_already_dead:
 mutex_unlock(&ses->session_mutex);




 if (rc == -EAGAIN)
  rc = 0;
 return rc;
}
