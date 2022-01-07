
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb2_sync_hdr {int dummy; } ;
struct mid_q_entry {int dummy; } ;
struct cifs_ses {int server; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 struct mid_q_entry* ERR_PTR (int) ;
 int cifs_delete_mid (struct mid_q_entry*) ;
 int revert_current_mid_from_hdr (int ,struct smb2_sync_hdr*) ;
 int smb2_get_mid_entry (struct cifs_ses*,struct smb2_sync_hdr*,struct mid_q_entry**) ;
 int smb2_seq_num_into_buf (int ,struct smb2_sync_hdr*) ;
 int smb2_sign_rqst (struct smb_rqst*,int ) ;

struct mid_q_entry *
smb2_setup_request(struct cifs_ses *ses, struct smb_rqst *rqst)
{
 int rc;
 struct smb2_sync_hdr *shdr =
   (struct smb2_sync_hdr *)rqst->rq_iov[0].iov_base;
 struct mid_q_entry *mid;

 smb2_seq_num_into_buf(ses->server, shdr);

 rc = smb2_get_mid_entry(ses, shdr, &mid);
 if (rc) {
  revert_current_mid_from_hdr(ses->server, shdr);
  return ERR_PTR(rc);
 }

 rc = smb2_sign_rqst(rqst, ses->server);
 if (rc) {
  revert_current_mid_from_hdr(ses->server, shdr);
  cifs_delete_mid(mid);
  return ERR_PTR(rc);
 }

 return mid;
}
