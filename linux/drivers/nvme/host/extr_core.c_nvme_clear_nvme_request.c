
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int rq_flags; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ retries; } ;


 int RQF_DONTPREP ;
 TYPE_1__* nvme_req (struct request*) ;

__attribute__((used)) static inline void nvme_clear_nvme_request(struct request *req)
{
 if (!(req->rq_flags & RQF_DONTPREP)) {
  nvme_req(req)->retries = 0;
  nvme_req(req)->flags = 0;
  req->rq_flags |= RQF_DONTPREP;
 }
}
