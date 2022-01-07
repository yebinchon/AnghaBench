
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb_rqst {TYPE_2__* rq_iov; } ;
struct smb2_sync_hdr {int Flags; int Signature; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; TYPE_1__* ops; int session_estab; } ;
struct TYPE_4__ {scalar_t__ iov_base; } ;
struct TYPE_3__ {int (* calc_signature ) (struct smb_rqst*,struct TCP_Server_Info*) ;} ;


 scalar_t__ CifsNeedNegotiate ;
 int SMB2_FLAGS_SIGNED ;
 int strncpy (int ,char*,int) ;
 int stub1 (struct smb_rqst*,struct TCP_Server_Info*) ;

__attribute__((used)) static int
smb2_sign_rqst(struct smb_rqst *rqst, struct TCP_Server_Info *server)
{
 int rc = 0;
 struct smb2_sync_hdr *shdr =
   (struct smb2_sync_hdr *)rqst->rq_iov[0].iov_base;

 if (!(shdr->Flags & SMB2_FLAGS_SIGNED) ||
     server->tcpStatus == CifsNeedNegotiate)
  return rc;

 if (!server->session_estab) {
  strncpy(shdr->Signature, "BSRSPYL", 8);
  return rc;
 }

 rc = server->ops->calc_signature(rqst, server);

 return rc;
}
