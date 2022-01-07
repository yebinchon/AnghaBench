
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smbd_request {TYPE_2__* sge; } ;
struct smbd_connection {int send_credits; int request_mempool; TYPE_1__* id; } ;
struct TYPE_4__ {int length; int addr; } ;
struct TYPE_3__ {int device; } ;


 int DMA_TO_DEVICE ;
 int atomic_inc (int *) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int mempool_free (struct smbd_request*,int ) ;

__attribute__((used)) static void smbd_destroy_header(struct smbd_connection *info,
  struct smbd_request *request)
{

 ib_dma_unmap_single(info->id->device,
       request->sge[0].addr,
       request->sge[0].length,
       DMA_TO_DEVICE);
 mempool_free(request, info->request_mempool);
 atomic_inc(&info->send_credits);
}
