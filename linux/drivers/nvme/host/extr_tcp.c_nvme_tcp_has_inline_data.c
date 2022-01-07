
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_tcp_request {int queue; } ;


 scalar_t__ WRITE ;
 struct request* blk_mq_rq_from_pdu (struct nvme_tcp_request*) ;
 unsigned int blk_rq_payload_bytes (struct request*) ;
 int nvme_tcp_async_req (struct nvme_tcp_request*) ;
 unsigned int nvme_tcp_inline_data_size (int ) ;
 scalar_t__ rq_data_dir (struct request*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline bool nvme_tcp_has_inline_data(struct nvme_tcp_request *req)
{
 struct request *rq;
 unsigned int bytes;

 if (unlikely(nvme_tcp_async_req(req)))
  return 0;

 rq = blk_mq_rq_from_pdu(req);
 bytes = blk_rq_payload_bytes(rq);

 return rq_data_dir(rq) == WRITE && bytes &&
  bytes <= nvme_tcp_inline_data_size(req->queue);
}
