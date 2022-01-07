
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct nvme_queue* end_io_data; } ;
struct nvme_queue {int flags; } ;
typedef scalar_t__ blk_status_t ;


 int NVMEQ_DELETE_ERROR ;
 int nvme_del_queue_end (struct request*,scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nvme_del_cq_end(struct request *req, blk_status_t error)
{
 struct nvme_queue *nvmeq = req->end_io_data;

 if (error)
  set_bit(NVMEQ_DELETE_ERROR, &nvmeq->flags);

 nvme_del_queue_end(req, error);
}
