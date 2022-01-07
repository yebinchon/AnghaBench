
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_tcp_request {scalar_t__ data_sent; int pdu_sent; scalar_t__ data_len; TYPE_1__* curr_bio; int iter; } ;
struct TYPE_2__ {struct TYPE_2__* bi_next; } ;


 int WRITE ;
 int iov_iter_advance (int *,int) ;
 int iov_iter_count (int *) ;
 int nvme_tcp_init_iter (struct nvme_tcp_request*,int ) ;

__attribute__((used)) static inline void nvme_tcp_advance_req(struct nvme_tcp_request *req,
  int len)
{
 req->data_sent += len;
 req->pdu_sent += len;
 iov_iter_advance(&req->iter, len);
 if (!iov_iter_count(&req->iter) &&
     req->data_sent < req->data_len) {
  req->curr_bio = req->curr_bio->bi_next;
  nvme_tcp_init_iter(req, WRITE);
 }
}
