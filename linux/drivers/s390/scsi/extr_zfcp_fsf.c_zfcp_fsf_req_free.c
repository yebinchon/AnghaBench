
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {int pool; struct zfcp_fsf_req* qtcb; TYPE_2__* adapter; } ;
struct TYPE_3__ {int qtcb_pool; } ;
struct TYPE_4__ {TYPE_1__ pool; } ;


 int kfree (struct zfcp_fsf_req*) ;
 int kmem_cache_free (int ,struct zfcp_fsf_req*) ;
 scalar_t__ likely (int) ;
 int mempool_free (struct zfcp_fsf_req*,int) ;
 int zfcp_fsf_qtcb_cache ;
 int zfcp_fsf_req_is_status_read_buffer (struct zfcp_fsf_req*) ;

void zfcp_fsf_req_free(struct zfcp_fsf_req *req)
{
 if (likely(req->pool)) {
  if (likely(!zfcp_fsf_req_is_status_read_buffer(req)))
   mempool_free(req->qtcb, req->adapter->pool.qtcb_pool);
  mempool_free(req, req->pool);
  return;
 }

 if (likely(!zfcp_fsf_req_is_status_read_buffer(req)))
  kmem_cache_free(zfcp_fsf_qtcb_cache, req->qtcb);
 kfree(req);
}
