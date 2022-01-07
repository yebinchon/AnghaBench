
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb2_sync_hdr {scalar_t__ Command; char* Signature; } ;
struct TCP_Server_Info {int srv_mutex; TYPE_2__* ops; int session_estab; scalar_t__ ignore_signature; } ;
struct TYPE_4__ {unsigned int (* calc_signature ) (struct smb_rqst*,struct TCP_Server_Info*) ;} ;
struct TYPE_3__ {scalar_t__ iov_base; } ;


 int EACCES ;
 int FYI ;
 scalar_t__ SMB2_NEGOTIATE ;
 scalar_t__ SMB2_OPLOCK_BREAK ;
 scalar_t__ SMB2_SESSION_SETUP ;
 int SMB2_SIGNATURE_SIZE ;
 int cifs_dbg (int ,char*,scalar_t__) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int stub1 (struct smb_rqst*,struct TCP_Server_Info*) ;

int
smb2_verify_signature(struct smb_rqst *rqst, struct TCP_Server_Info *server)
{
 unsigned int rc;
 char server_response_sig[16];
 struct smb2_sync_hdr *shdr =
   (struct smb2_sync_hdr *)rqst->rq_iov[0].iov_base;

 if ((shdr->Command == SMB2_NEGOTIATE) ||
     (shdr->Command == SMB2_SESSION_SETUP) ||
     (shdr->Command == SMB2_OPLOCK_BREAK) ||
     server->ignore_signature ||
     (!server->session_estab))
  return 0;







 if (memcmp(shdr->Signature, "BSRSPYL ", 8) == 0)
  cifs_dbg(FYI, "dummy signature received for smb command 0x%x\n",
    shdr->Command);





 memcpy(server_response_sig, shdr->Signature, SMB2_SIGNATURE_SIZE);

 memset(shdr->Signature, 0, SMB2_SIGNATURE_SIZE);

 mutex_lock(&server->srv_mutex);
 rc = server->ops->calc_signature(rqst, server);
 mutex_unlock(&server->srv_mutex);

 if (rc)
  return rc;

 if (memcmp(server_response_sig, shdr->Signature, SMB2_SIGNATURE_SIZE))
  return -EACCES;
 else
  return 0;
}
