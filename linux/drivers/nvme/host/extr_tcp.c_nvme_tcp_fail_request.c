
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_request {int dummy; } ;


 int NVME_SC_HOST_PATH_ERROR ;
 int blk_mq_rq_from_pdu (struct nvme_tcp_request*) ;
 int nvme_tcp_end_request (int ,int ) ;

__attribute__((used)) static void nvme_tcp_fail_request(struct nvme_tcp_request *req)
{
 nvme_tcp_end_request(blk_mq_rq_from_pdu(req), NVME_SC_HOST_PATH_ERROR);
}
