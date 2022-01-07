
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct zfcp_qdio {struct zfcp_adapter* adapter; } ;
struct zfcp_fsf_req {scalar_t__ req_id; TYPE_4__* qtcb; int qdio_req; struct zfcp_adapter* adapter; int completion; int timer; int list; } ;
struct TYPE_5__ {int * qtcb_pool; } ;
struct zfcp_adapter {scalar_t__ req_no; int qdio; int fsf_req_seq_no; TYPE_1__ pool; } ;
struct fsf_qtcb {int dummy; } ;
typedef int mempool_t ;
struct TYPE_7__ {scalar_t__ req_handle; size_t fsf_command; } ;
struct TYPE_6__ {scalar_t__ req_id; int ulp_info; int qtcb_version; int qtcb_type; int req_seq_no; } ;
struct TYPE_8__ {TYPE_3__ header; TYPE_2__ prefix; } ;


 int ENOMEM ;
 struct zfcp_fsf_req* ERR_PTR (int ) ;
 int FSF_QTCB_CURRENT_VERSION ;
 size_t FSF_QTCB_UNSOLICITED_STATUS ;
 int INIT_LIST_HEAD (int *) ;
 int * fsf_qtcb_type ;
 int init_completion (int *) ;
 scalar_t__ likely (int) ;
 int timer_setup (int *,int *,int ) ;
 scalar_t__ unlikely (int) ;
 struct zfcp_fsf_req* zfcp_fsf_alloc (int *) ;
 void* zfcp_fsf_qtcb_alloc (int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_qdio_req_init (int ,int *,scalar_t__,int ,TYPE_4__*,int) ;

__attribute__((used)) static struct zfcp_fsf_req *zfcp_fsf_req_create(struct zfcp_qdio *qdio,
      u32 fsf_cmd, u8 sbtype,
      mempool_t *pool)
{
 struct zfcp_adapter *adapter = qdio->adapter;
 struct zfcp_fsf_req *req = zfcp_fsf_alloc(pool);

 if (unlikely(!req))
  return ERR_PTR(-ENOMEM);

 if (adapter->req_no == 0)
  adapter->req_no++;

 INIT_LIST_HEAD(&req->list);
 timer_setup(&req->timer, ((void*)0), 0);
 init_completion(&req->completion);

 req->adapter = adapter;
 req->req_id = adapter->req_no;

 if (likely(fsf_cmd != FSF_QTCB_UNSOLICITED_STATUS)) {
  if (likely(pool))
   req->qtcb = zfcp_fsf_qtcb_alloc(
    adapter->pool.qtcb_pool);
  else
   req->qtcb = zfcp_fsf_qtcb_alloc(((void*)0));

  if (unlikely(!req->qtcb)) {
   zfcp_fsf_req_free(req);
   return ERR_PTR(-ENOMEM);
  }

  req->qtcb->prefix.req_seq_no = adapter->fsf_req_seq_no;
  req->qtcb->prefix.req_id = req->req_id;
  req->qtcb->prefix.ulp_info = 26;
  req->qtcb->prefix.qtcb_type = fsf_qtcb_type[fsf_cmd];
  req->qtcb->prefix.qtcb_version = FSF_QTCB_CURRENT_VERSION;
  req->qtcb->header.req_handle = req->req_id;
  req->qtcb->header.fsf_command = fsf_cmd;
 }

 zfcp_qdio_req_init(adapter->qdio, &req->qdio_req, req->req_id, sbtype,
      req->qtcb, sizeof(struct fsf_qtcb));

 return req;
}
