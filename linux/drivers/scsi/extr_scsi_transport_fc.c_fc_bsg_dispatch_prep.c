
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {int dummy; } ;
struct bsg_job {int dummy; } ;
typedef int blk_status_t ;




 int EAGAIN ;
 int EIO ;
 int fc_bsg_dispatch (struct bsg_job*) ;
 int fc_bsg_rport_prep (struct fc_rport*) ;
 struct fc_rport* fc_bsg_to_rport (struct bsg_job*) ;

__attribute__((used)) static int fc_bsg_dispatch_prep(struct bsg_job *job)
{
 struct fc_rport *rport = fc_bsg_to_rport(job);
 blk_status_t ret;

 ret = fc_bsg_rport_prep(rport);
 switch (ret) {
 case 129:
  break;
 case 128:
  return -EAGAIN;
 default:
  return -EIO;
 }

 return fc_bsg_dispatch(job);
}
