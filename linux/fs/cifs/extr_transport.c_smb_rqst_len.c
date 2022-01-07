
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {int rq_nvec; int rq_npages; int rq_pagesz; int rq_offset; scalar_t__ rq_tailsz; struct kvec* rq_iov; } ;
struct kvec {int iov_len; } ;
struct TCP_Server_Info {TYPE_1__* vals; } ;
struct TYPE_2__ {scalar_t__ header_preamble_size; } ;



unsigned long
smb_rqst_len(struct TCP_Server_Info *server, struct smb_rqst *rqst)
{
 unsigned int i;
 struct kvec *iov;
 int nvec;
 unsigned long buflen = 0;

 if (server->vals->header_preamble_size == 0 &&
     rqst->rq_nvec >= 2 && rqst->rq_iov[0].iov_len == 4) {
  iov = &rqst->rq_iov[1];
  nvec = rqst->rq_nvec - 1;
 } else {
  iov = rqst->rq_iov;
  nvec = rqst->rq_nvec;
 }


 for (i = 0; i < nvec; i++)
  buflen += iov[i].iov_len;







 if (rqst->rq_npages) {
  if (rqst->rq_npages == 1)
   buflen += rqst->rq_tailsz;
  else {




   buflen += rqst->rq_pagesz * (rqst->rq_npages - 1) -
     rqst->rq_offset;
   buflen += rqst->rq_tailsz;
  }
 }

 return buflen;
}
