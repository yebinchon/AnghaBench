
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int length; int addr; int lkey; } ;
struct TYPE_6__ {int done; } ;
struct smbd_response {TYPE_4__ sge; TYPE_2__ cqe; int packet; } ;
struct smbd_connection {TYPE_3__* id; TYPE_1__* pd; int max_receive_size; } ;
struct ib_recv_wr {int num_sge; TYPE_4__* sg_list; int * next; TYPE_2__* wr_cqe; } ;
struct TYPE_7__ {int device; int qp; } ;
struct TYPE_5__ {int local_dma_lkey; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int ERR ;
 int ib_dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int ib_post_recv (int ,struct ib_recv_wr*,int *) ;
 int log_rdma_recv (int ,char*,int) ;
 int recv_done ;
 int smbd_disconnect_rdma_connection (struct smbd_connection*) ;

__attribute__((used)) static int smbd_post_recv(
  struct smbd_connection *info, struct smbd_response *response)
{
 struct ib_recv_wr recv_wr;
 int rc = -EIO;

 response->sge.addr = ib_dma_map_single(
    info->id->device, response->packet,
    info->max_receive_size, DMA_FROM_DEVICE);
 if (ib_dma_mapping_error(info->id->device, response->sge.addr))
  return rc;

 response->sge.length = info->max_receive_size;
 response->sge.lkey = info->pd->local_dma_lkey;

 response->cqe.done = recv_done;

 recv_wr.wr_cqe = &response->cqe;
 recv_wr.next = ((void*)0);
 recv_wr.sg_list = &response->sge;
 recv_wr.num_sge = 1;

 rc = ib_post_recv(info->id->qp, &recv_wr, ((void*)0));
 if (rc) {
  ib_dma_unmap_single(info->id->device, response->sge.addr,
        response->sge.length, DMA_FROM_DEVICE);
  smbd_disconnect_rdma_connection(info);
  log_rdma_recv(ERR, "ib_post_recv failed rc=%d\n", rc);
 }

 return rc;
}
