
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct nvme_queue* end_io_data; } ;
struct nvme_queue {int delete_done; } ;
typedef int blk_status_t ;


 int blk_mq_free_request (struct request*) ;
 int complete (int *) ;

__attribute__((used)) static void nvme_del_queue_end(struct request *req, blk_status_t error)
{
 struct nvme_queue *nvmeq = req->end_io_data;

 blk_mq_free_request(req);
 complete(&nvmeq->delete_done);
}
