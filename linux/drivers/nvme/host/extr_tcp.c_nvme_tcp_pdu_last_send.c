
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_request {int dummy; } ;


 int nvme_tcp_pdu_data_left (struct nvme_tcp_request*) ;

__attribute__((used)) static inline size_t nvme_tcp_pdu_last_send(struct nvme_tcp_request *req,
  int len)
{
 return nvme_tcp_pdu_data_left(req) <= len;
}
