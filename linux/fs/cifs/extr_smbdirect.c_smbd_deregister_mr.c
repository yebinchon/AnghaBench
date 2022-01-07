
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int done; } ;
struct TYPE_6__ {int invalidate_rkey; } ;
struct ib_send_wr {int send_flags; TYPE_2__ ex; scalar_t__ num_sge; TYPE_1__* wr_cqe; int opcode; } ;
struct smbd_mr {int need_invalidate; int state; int invalidate_done; TYPE_3__* mr; TYPE_1__ cqe; struct ib_send_wr inv_wr; struct smbd_connection* conn; } ;
struct smbd_connection {int wait_for_mr_cleanup; int mr_used_count; int mr_recovery_work; int workqueue; TYPE_4__* id; } ;
struct TYPE_8__ {int qp; } ;
struct TYPE_7__ {int rkey; } ;


 int ERR ;
 int IB_SEND_SIGNALED ;
 int IB_WR_LOCAL_INV ;
 int MR_INVALIDATED ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int init_completion (int *) ;
 int local_inv_done ;
 int log_rdma_mr (int ,char*,int) ;
 int queue_work (int ,int *) ;
 int smbd_disconnect_rdma_connection (struct smbd_connection*) ;
 int wait_for_completion (int *) ;
 int wake_up (int *) ;

int smbd_deregister_mr(struct smbd_mr *smbdirect_mr)
{
 struct ib_send_wr *wr;
 struct smbd_connection *info = smbdirect_mr->conn;
 int rc = 0;

 if (smbdirect_mr->need_invalidate) {

  wr = &smbdirect_mr->inv_wr;
  wr->opcode = IB_WR_LOCAL_INV;
  smbdirect_mr->cqe.done = local_inv_done;
  wr->wr_cqe = &smbdirect_mr->cqe;
  wr->num_sge = 0;
  wr->ex.invalidate_rkey = smbdirect_mr->mr->rkey;
  wr->send_flags = IB_SEND_SIGNALED;

  init_completion(&smbdirect_mr->invalidate_done);
  rc = ib_post_send(info->id->qp, wr, ((void*)0));
  if (rc) {
   log_rdma_mr(ERR, "ib_post_send failed rc=%x\n", rc);
   smbd_disconnect_rdma_connection(info);
   goto done;
  }
  wait_for_completion(&smbdirect_mr->invalidate_done);
  smbdirect_mr->need_invalidate = 0;
 } else




  smbdirect_mr->state = MR_INVALIDATED;





 queue_work(info->workqueue, &info->mr_recovery_work);

done:
 if (atomic_dec_and_test(&info->mr_used_count))
  wake_up(&info->wait_for_mr_cleanup);

 return rc;
}
