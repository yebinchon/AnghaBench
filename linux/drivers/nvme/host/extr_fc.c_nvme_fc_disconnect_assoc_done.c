
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmefc_ls_req_op {int dummy; } ;
struct nvmefc_ls_req {int dummy; } ;


 int __nvme_fc_finish_ls_req (struct nvmefc_ls_req_op*) ;
 int kfree (struct nvmefc_ls_req_op*) ;
 struct nvmefc_ls_req_op* ls_req_to_lsop (struct nvmefc_ls_req*) ;

__attribute__((used)) static void
nvme_fc_disconnect_assoc_done(struct nvmefc_ls_req *lsreq, int status)
{
 struct nvmefc_ls_req_op *lsop = ls_req_to_lsop(lsreq);

 __nvme_fc_finish_ls_req(lsop);



 kfree(lsop);
}
