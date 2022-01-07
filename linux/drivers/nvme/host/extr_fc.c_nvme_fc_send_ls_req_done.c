
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmefc_ls_req_op {int ls_error; int ls_done; } ;
struct nvmefc_ls_req {int dummy; } ;


 int complete (int *) ;
 struct nvmefc_ls_req_op* ls_req_to_lsop (struct nvmefc_ls_req*) ;

__attribute__((used)) static void
nvme_fc_send_ls_req_done(struct nvmefc_ls_req *lsreq, int status)
{
 struct nvmefc_ls_req_op *lsop = ls_req_to_lsop(lsreq);

 lsop->ls_error = status;
 complete(&lsop->ls_done);
}
