
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fcoe_task_ctx_entry {int dummy; } ;
struct bnx2fc_cmd {int cleanup_done; scalar_t__ wait_for_cleanup_comp; int refcount; int abts_done; scalar_t__ wait_for_abts_comp; int req_flags; int cmd_type; } ;


 int BNX2FC_FLAG_ABTS_DONE ;
 int BNX2FC_FLAG_ISSUE_ABTS ;
 int BNX2FC_FLAG_ISSUE_CLEANUP_REQ ;
 int BNX2FC_IO_DBG (struct bnx2fc_cmd*,char*,int ,int ) ;
 int DID_ERROR ;
 int bnx2fc_cmd_release ;
 int bnx2fc_scsi_done (struct bnx2fc_cmd*,int ) ;
 int complete (int *) ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void bnx2fc_process_cleanup_compl(struct bnx2fc_cmd *io_req,
      struct fcoe_task_ctx_entry *task,
      u8 num_rq)
{
 BNX2FC_IO_DBG(io_req, "Entered process_cleanup_compl "
         "refcnt = %d, cmd_type = %d\n",
     kref_read(&io_req->refcount), io_req->cmd_type);




 if (!test_and_clear_bit(BNX2FC_FLAG_ISSUE_CLEANUP_REQ,
    &io_req->req_flags))
  return;





 if (test_bit(BNX2FC_FLAG_ISSUE_ABTS, &io_req->req_flags) &&
     !test_bit(BNX2FC_FLAG_ABTS_DONE, &io_req->req_flags)) {
  set_bit(BNX2FC_FLAG_ABTS_DONE, &io_req->req_flags);
  if (io_req->wait_for_abts_comp)
   complete(&io_req->abts_done);
 }

 bnx2fc_scsi_done(io_req, DID_ERROR);
 kref_put(&io_req->refcount, bnx2fc_cmd_release);
 if (io_req->wait_for_cleanup_comp)
  complete(&io_req->cleanup_done);
}
