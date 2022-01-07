
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int done; } ;
struct TYPE_9__ {int send_flags; scalar_t__ num_sge; TYPE_1__* wr_cqe; int opcode; } ;
struct ib_reg_wr {int key; int access; TYPE_4__ wr; TYPE_3__* mr; } ;
struct smbd_mr {int need_invalidate; int sgl_count; int dir; int state; int * sgl; TYPE_3__* mr; TYPE_1__ cqe; struct ib_reg_wr wr; } ;
struct smbd_connection {int max_frmr_depth; int wait_for_mr_cleanup; int mr_used_count; TYPE_2__* id; } ;
struct page {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int rkey; } ;
struct TYPE_7__ {int device; int qp; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ERR ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_SEND_SIGNALED ;
 int IB_WR_REG_MR ;
 int INFO ;
 int MR_ERROR ;
 int PAGE_SIZE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct smbd_mr* get_mr (struct smbd_connection*) ;
 int ib_dma_map_sg (int ,int *,int,int) ;
 int ib_dma_unmap_sg (int ,int *,int,int) ;
 int ib_inc_rkey (int) ;
 int ib_map_mr_sg (TYPE_3__*,int *,int,int *,int) ;
 int ib_post_send (int ,TYPE_4__*,int *) ;
 int ib_update_fast_reg_key (TYPE_3__*,int ) ;
 int log_rdma_mr (int ,char*,...) ;
 int register_mr_done ;
 int sg_init_table (int *,int) ;
 int sg_set_page (int *,struct page*,int,int) ;
 int smbd_disconnect_rdma_connection (struct smbd_connection*) ;
 int wake_up (int *) ;

struct smbd_mr *smbd_register_mr(
 struct smbd_connection *info, struct page *pages[], int num_pages,
 int offset, int tailsz, bool writing, bool need_invalidate)
{
 struct smbd_mr *smbdirect_mr;
 int rc, i;
 enum dma_data_direction dir;
 struct ib_reg_wr *reg_wr;

 if (num_pages > info->max_frmr_depth) {
  log_rdma_mr(ERR, "num_pages=%d max_frmr_depth=%d\n",
   num_pages, info->max_frmr_depth);
  return ((void*)0);
 }

 smbdirect_mr = get_mr(info);
 if (!smbdirect_mr) {
  log_rdma_mr(ERR, "get_mr returning NULL\n");
  return ((void*)0);
 }
 smbdirect_mr->need_invalidate = need_invalidate;
 smbdirect_mr->sgl_count = num_pages;
 sg_init_table(smbdirect_mr->sgl, num_pages);

 log_rdma_mr(INFO, "num_pages=0x%x offset=0x%x tailsz=0x%x\n",
   num_pages, offset, tailsz);

 if (num_pages == 1) {
  sg_set_page(&smbdirect_mr->sgl[0], pages[0], tailsz, offset);
  goto skip_multiple_pages;
 }


 sg_set_page(
  &smbdirect_mr->sgl[0], pages[0], PAGE_SIZE - offset, offset);
 i = 1;
 while (i < num_pages - 1) {
  sg_set_page(&smbdirect_mr->sgl[i], pages[i], PAGE_SIZE, 0);
  i++;
 }
 sg_set_page(&smbdirect_mr->sgl[i], pages[i],
  tailsz ? tailsz : PAGE_SIZE, 0);

skip_multiple_pages:
 dir = writing ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
 smbdirect_mr->dir = dir;
 rc = ib_dma_map_sg(info->id->device, smbdirect_mr->sgl, num_pages, dir);
 if (!rc) {
  log_rdma_mr(ERR, "ib_dma_map_sg num_pages=%x dir=%x rc=%x\n",
   num_pages, dir, rc);
  goto dma_map_error;
 }

 rc = ib_map_mr_sg(smbdirect_mr->mr, smbdirect_mr->sgl, num_pages,
  ((void*)0), PAGE_SIZE);
 if (rc != num_pages) {
  log_rdma_mr(ERR,
   "ib_map_mr_sg failed rc = %d num_pages = %x\n",
   rc, num_pages);
  goto map_mr_error;
 }

 ib_update_fast_reg_key(smbdirect_mr->mr,
  ib_inc_rkey(smbdirect_mr->mr->rkey));
 reg_wr = &smbdirect_mr->wr;
 reg_wr->wr.opcode = IB_WR_REG_MR;
 smbdirect_mr->cqe.done = register_mr_done;
 reg_wr->wr.wr_cqe = &smbdirect_mr->cqe;
 reg_wr->wr.num_sge = 0;
 reg_wr->wr.send_flags = IB_SEND_SIGNALED;
 reg_wr->mr = smbdirect_mr->mr;
 reg_wr->key = smbdirect_mr->mr->rkey;
 reg_wr->access = writing ?
   IB_ACCESS_REMOTE_WRITE | IB_ACCESS_LOCAL_WRITE :
   IB_ACCESS_REMOTE_READ;






 rc = ib_post_send(info->id->qp, &reg_wr->wr, ((void*)0));
 if (!rc)
  return smbdirect_mr;

 log_rdma_mr(ERR, "ib_post_send failed rc=%x reg_wr->key=%x\n",
  rc, reg_wr->key);


map_mr_error:
 ib_dma_unmap_sg(info->id->device, smbdirect_mr->sgl,
  smbdirect_mr->sgl_count, smbdirect_mr->dir);

dma_map_error:
 smbdirect_mr->state = MR_ERROR;
 if (atomic_dec_and_test(&info->mr_used_count))
  wake_up(&info->wait_for_mr_cleanup);

 smbd_disconnect_rdma_connection(info);

 return ((void*)0);
}
