
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t iov_offset; } ;
struct nvme_tcp_request {TYPE_1__ iter; } ;



__attribute__((used)) static inline size_t nvme_tcp_req_offset(struct nvme_tcp_request *req)
{
 return req->iter.iov_offset;
}
