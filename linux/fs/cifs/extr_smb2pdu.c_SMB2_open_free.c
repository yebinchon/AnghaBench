
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {int rq_nvec; TYPE_1__* rq_iov; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 int cifs_small_buf_release (scalar_t__) ;
 int kfree (scalar_t__) ;
 scalar_t__ smb2_padding ;

void
SMB2_open_free(struct smb_rqst *rqst)
{
 int i;

 if (rqst && rqst->rq_iov) {
  cifs_small_buf_release(rqst->rq_iov[0].iov_base);
  for (i = 1; i < rqst->rq_nvec; i++)
   if (rqst->rq_iov[i].iov_base != smb2_padding)
    kfree(rqst->rq_iov[i].iov_base);
 }
}
