
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nvme_result {int dummy; } nvme_result ;
typedef int u16 ;
struct request {int dummy; } ;


 int cpu_to_le16 (int) ;
 int nvme_end_request (struct request*,int ,union nvme_result) ;

__attribute__((used)) static inline void nvme_tcp_end_request(struct request *rq, u16 status)
{
 union nvme_result res = {};

 nvme_end_request(rq, cpu_to_le16(status << 1), res);
}
