
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bvec; } ;
struct nvme_tcp_request {TYPE_2__ iter; } ;
struct TYPE_3__ {struct page* bv_page; } ;



__attribute__((used)) static inline struct page *nvme_tcp_req_cur_page(struct nvme_tcp_request *req)
{
 return req->iter.bvec->bv_page;
}
