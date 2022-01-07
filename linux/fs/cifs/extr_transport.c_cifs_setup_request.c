
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb_hdr {int dummy; } ;
struct mid_q_entry {int sequence_number; } ;
struct cifs_ses {int server; } ;
struct TYPE_2__ {scalar_t__ iov_base; int iov_len; } ;


 int EIO ;
 struct mid_q_entry* ERR_PTR (int) ;
 int allocate_mid (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ;
 int cifs_delete_mid (struct mid_q_entry*) ;
 int cifs_sign_rqst (struct smb_rqst*,int ,int *) ;

struct mid_q_entry *
cifs_setup_request(struct cifs_ses *ses, struct smb_rqst *rqst)
{
 int rc;
 struct smb_hdr *hdr = (struct smb_hdr *)rqst->rq_iov[0].iov_base;
 struct mid_q_entry *mid;

 if (rqst->rq_iov[0].iov_len != 4 ||
     rqst->rq_iov[0].iov_base + 4 != rqst->rq_iov[1].iov_base)
  return ERR_PTR(-EIO);

 rc = allocate_mid(ses, hdr, &mid);
 if (rc)
  return ERR_PTR(rc);
 rc = cifs_sign_rqst(rqst, ses->server, &mid->sequence_number);
 if (rc) {
  cifs_delete_mid(mid);
  return ERR_PTR(rc);
 }
 return mid;
}
