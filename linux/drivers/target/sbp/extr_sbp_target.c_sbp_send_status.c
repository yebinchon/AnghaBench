
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct sbp_target_request {int orb_pointer; int se_cmd; TYPE_1__ status; struct sbp_login_descriptor* login; } ;
struct sbp_login_descriptor {int status_fifo_addr; } ;


 int EIO ;
 int RCODE_COMPLETE ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int be32_to_cpu (int ) ;
 int pr_debug (char*,int) ;
 int sbp_run_request_transaction (struct sbp_target_request*,int ,int ,TYPE_1__*,int) ;
 int target_put_sess_cmd (int *) ;

__attribute__((used)) static int sbp_send_status(struct sbp_target_request *req)
{
 int rc, ret = 0, length;
 struct sbp_login_descriptor *login = req->login;

 length = (((be32_to_cpu(req->status.status) >> 24) & 0x07) + 1) * 4;

 rc = sbp_run_request_transaction(req, TCODE_WRITE_BLOCK_REQUEST,
   login->status_fifo_addr, &req->status, length);
 if (rc != RCODE_COMPLETE) {
  pr_debug("sbp_send_status: write failed: 0x%x\n", rc);
  ret = -EIO;
  goto put_ref;
 }

 pr_debug("sbp_send_status: status write complete for ORB: 0x%llx\n",
   req->orb_pointer);





put_ref:
 target_put_sess_cmd(&req->se_cmd);
 return ret;
}
