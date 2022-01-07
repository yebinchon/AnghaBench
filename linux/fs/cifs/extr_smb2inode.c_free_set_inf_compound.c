
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {scalar_t__ rq_iov; } ;


 int SMB2_close_free (struct smb_rqst*) ;
 int SMB2_set_info_free (struct smb_rqst*) ;

__attribute__((used)) static void
free_set_inf_compound(struct smb_rqst *rqst)
{
 if (rqst[1].rq_iov)
  SMB2_set_info_free(&rqst[1]);
 if (rqst[2].rq_iov)
  SMB2_close_free(&rqst[2]);
}
