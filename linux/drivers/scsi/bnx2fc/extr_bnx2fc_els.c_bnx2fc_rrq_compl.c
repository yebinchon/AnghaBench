
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_els_cb_arg {struct bnx2fc_cmd* aborted_io_req; struct bnx2fc_cmd* io_req; } ;
struct bnx2fc_cmd {scalar_t__ on_active_queue; int link; int xid; int req_flags; int refcount; } ;


 int BNX2FC_ELS_DBG (char*,int ,...) ;
 int BNX2FC_FLAG_ELS_TIMEOUT ;
 int BUG_ON (int) ;
 int bnx2fc_cmd_release ;
 int bnx2fc_initiate_cleanup (struct bnx2fc_cmd*) ;
 int kfree (struct bnx2fc_els_cb_arg*) ;
 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void bnx2fc_rrq_compl(struct bnx2fc_els_cb_arg *cb_arg)
{
 struct bnx2fc_cmd *orig_io_req;
 struct bnx2fc_cmd *rrq_req;
 int rc = 0;

 BUG_ON(!cb_arg);
 rrq_req = cb_arg->io_req;
 orig_io_req = cb_arg->aborted_io_req;
 BUG_ON(!orig_io_req);
 BNX2FC_ELS_DBG("rrq_compl: orig xid = 0x%x, rrq_xid = 0x%x\n",
     orig_io_req->xid, rrq_req->xid);

 kref_put(&orig_io_req->refcount, bnx2fc_cmd_release);

 if (test_and_clear_bit(BNX2FC_FLAG_ELS_TIMEOUT, &rrq_req->req_flags)) {




  BNX2FC_ELS_DBG("rrq xid - 0x%x timed out, clean it up\n",
      rrq_req->xid);

  if (rrq_req->on_active_queue) {
   list_del_init(&rrq_req->link);
   rrq_req->on_active_queue = 0;
   rc = bnx2fc_initiate_cleanup(rrq_req);
   BUG_ON(rc);
  }
 }
 kfree(cb_arg);
}
