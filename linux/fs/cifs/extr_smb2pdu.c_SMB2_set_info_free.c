
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct TYPE_2__ {int iov_base; } ;


 int cifs_buf_release (int ) ;

void
SMB2_set_info_free(struct smb_rqst *rqst)
{
 if (rqst && rqst->rq_iov)
  cifs_buf_release(rqst->rq_iov[0].iov_base);
}
