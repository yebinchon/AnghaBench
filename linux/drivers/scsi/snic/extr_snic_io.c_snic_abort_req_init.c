
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct snic_req_info {struct snic_host_req* abort_req; } ;
struct TYPE_2__ {scalar_t__ init_ctx; } ;
struct snic_host_req {TYPE_1__ hdr; } ;
struct snic {int shost; int * req_pool; } ;


 int GFP_ATOMIC ;
 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_ERR (int ,char*) ;
 size_t SNIC_REQ_TM_CACHE ;
 int WARN_ON_ONCE (int) ;
 struct snic_host_req* mempool_alloc (int ,int ) ;
 int memset (struct snic_host_req*,int ,int) ;

struct snic_host_req *
snic_abort_req_init(struct snic *snic, struct snic_req_info *rqi)
{
 struct snic_host_req *req = ((void*)0);

 SNIC_BUG_ON(!rqi);


 if (rqi->abort_req)
  return rqi->abort_req;


 req = mempool_alloc(snic->req_pool[SNIC_REQ_TM_CACHE], GFP_ATOMIC);
 if (!req) {
  SNIC_HOST_ERR(snic->shost, "abts:Failed to alloc tm req.\n");
  WARN_ON_ONCE(1);

  return ((void*)0);
 }

 rqi->abort_req = req;
 memset(req, 0, sizeof(struct snic_host_req));

 req->hdr.init_ctx = (ulong) rqi;

 return req;
}
