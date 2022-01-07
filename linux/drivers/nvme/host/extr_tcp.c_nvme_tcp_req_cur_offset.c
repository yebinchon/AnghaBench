
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t iov_offset; TYPE_1__* bvec; } ;
struct nvme_tcp_request {TYPE_2__ iter; } ;
struct TYPE_3__ {size_t bv_offset; } ;



__attribute__((used)) static inline size_t nvme_tcp_req_cur_offset(struct nvme_tcp_request *req)
{
 return req->iter.bvec->bv_offset + req->iter.iov_offset;
}
