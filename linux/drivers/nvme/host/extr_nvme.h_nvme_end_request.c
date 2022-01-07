
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nvme_result {int dummy; } nvme_result ;
struct request {int dummy; } ;
struct nvme_request {int status; union nvme_result result; } ;
typedef int __le16 ;


 int blk_mq_complete_request (struct request*) ;
 int le16_to_cpu (int ) ;
 struct nvme_request* nvme_req (struct request*) ;
 int nvme_should_fail (struct request*) ;

__attribute__((used)) static inline void nvme_end_request(struct request *req, __le16 status,
  union nvme_result result)
{
 struct nvme_request *rq = nvme_req(req);

 rq->status = le16_to_cpu(status) >> 1;
 rq->result = result;

 nvme_should_fail(req);
 blk_mq_complete_request(req);
}
