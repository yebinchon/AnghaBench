
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_request {int dummy; } ;


 struct nvme_request* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static inline struct nvme_request *nvme_req(struct request *req)
{
 return blk_mq_rq_to_pdu(req);
}
