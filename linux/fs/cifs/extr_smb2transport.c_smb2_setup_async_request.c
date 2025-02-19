
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb2_sync_hdr {scalar_t__ Command; } ;
struct mid_q_entry {int dummy; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 scalar_t__ CifsNeedNegotiate ;
 int DeleteMidQEntry (struct mid_q_entry*) ;
 int EAGAIN ;
 int ENOMEM ;
 struct mid_q_entry* ERR_PTR (int) ;
 scalar_t__ SMB2_NEGOTIATE ;
 int revert_current_mid_from_hdr (struct TCP_Server_Info*,struct smb2_sync_hdr*) ;
 struct mid_q_entry* smb2_mid_entry_alloc (struct smb2_sync_hdr*,struct TCP_Server_Info*) ;
 int smb2_seq_num_into_buf (struct TCP_Server_Info*,struct smb2_sync_hdr*) ;
 int smb2_sign_rqst (struct smb_rqst*,struct TCP_Server_Info*) ;

struct mid_q_entry *
smb2_setup_async_request(struct TCP_Server_Info *server, struct smb_rqst *rqst)
{
 int rc;
 struct smb2_sync_hdr *shdr =
   (struct smb2_sync_hdr *)rqst->rq_iov[0].iov_base;
 struct mid_q_entry *mid;

 if (server->tcpStatus == CifsNeedNegotiate &&
    shdr->Command != SMB2_NEGOTIATE)
  return ERR_PTR(-EAGAIN);

 smb2_seq_num_into_buf(server, shdr);

 mid = smb2_mid_entry_alloc(shdr, server);
 if (mid == ((void*)0)) {
  revert_current_mid_from_hdr(server, shdr);
  return ERR_PTR(-ENOMEM);
 }

 rc = smb2_sign_rqst(rqst, server);
 if (rc) {
  revert_current_mid_from_hdr(server, shdr);
  DeleteMidQEntry(mid);
  return ERR_PTR(rc);
 }

 return mid;
}
