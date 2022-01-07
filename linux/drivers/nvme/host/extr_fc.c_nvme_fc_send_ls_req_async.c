
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmefc_ls_req_op {int dummy; } ;
struct nvme_fc_rport {int dummy; } ;


 int __nvme_fc_send_ls_req (struct nvme_fc_rport*,struct nvmefc_ls_req_op*,void (*) (struct nvmefc_ls_req*,int)) ;

__attribute__((used)) static int
nvme_fc_send_ls_req_async(struct nvme_fc_rport *rport,
  struct nvmefc_ls_req_op *lsop,
  void (*done)(struct nvmefc_ls_req *req, int status))
{


 return __nvme_fc_send_ls_req(rport, lsop, done);
}
