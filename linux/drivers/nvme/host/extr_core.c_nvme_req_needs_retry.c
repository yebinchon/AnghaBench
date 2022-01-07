
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int status; scalar_t__ retries; } ;


 int NVME_SC_DNR ;
 scalar_t__ blk_noretry_request (struct request*) ;
 scalar_t__ nvme_max_retries ;
 TYPE_1__* nvme_req (struct request*) ;

__attribute__((used)) static inline bool nvme_req_needs_retry(struct request *req)
{
 if (blk_noretry_request(req))
  return 0;
 if (nvme_req(req)->status & NVME_SC_DNR)
  return 0;
 if (nvme_req(req)->retries >= nvme_max_retries)
  return 0;
 return 1;
}
