
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct zfcp_qdio {int dummy; } ;
struct zfcp_fsf_req {int qdio_req; struct fsf_qtcb* qtcb; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int adapter_features; struct zfcp_qdio* qdio; } ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {void* resp_buf_length; void* req_buf_length; } ;
struct TYPE_4__ {TYPE_1__ support; } ;
struct fsf_qtcb {TYPE_2__ bottom; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int FSF_FEATURE_ELS_CT_CHAINED_SBALS ;
 int sg_nents (struct scatterlist*) ;
 scalar_t__ zfcp_adapter_multi_buffer_active (struct zfcp_adapter*) ;
 int zfcp_fsf_setup_ct_els_unchained (struct zfcp_qdio*,int *,struct scatterlist*,struct scatterlist*) ;
 void* zfcp_qdio_real_bytes (struct scatterlist*) ;
 scalar_t__ zfcp_qdio_sbals_from_sg (struct zfcp_qdio*,int *,struct scatterlist*) ;
 int zfcp_qdio_set_data_div (struct zfcp_qdio*,int *,int ) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;
 int zfcp_qdio_set_scount (struct zfcp_qdio*,int *) ;
 scalar_t__ zfcp_qdio_sg_one_sbale (struct scatterlist*) ;
 int zfcp_qdio_skip_to_last_sbale (struct zfcp_qdio*,int *) ;

__attribute__((used)) static int zfcp_fsf_setup_ct_els_sbals(struct zfcp_fsf_req *req,
           struct scatterlist *sg_req,
           struct scatterlist *sg_resp)
{
 struct zfcp_adapter *adapter = req->adapter;
 struct zfcp_qdio *qdio = adapter->qdio;
 struct fsf_qtcb *qtcb = req->qtcb;
 u32 feat = adapter->adapter_features;

 if (zfcp_adapter_multi_buffer_active(adapter)) {
  if (zfcp_qdio_sbals_from_sg(qdio, &req->qdio_req, sg_req))
   return -EIO;
  qtcb->bottom.support.req_buf_length =
   zfcp_qdio_real_bytes(sg_req);
  if (zfcp_qdio_sbals_from_sg(qdio, &req->qdio_req, sg_resp))
   return -EIO;
  qtcb->bottom.support.resp_buf_length =
   zfcp_qdio_real_bytes(sg_resp);

  zfcp_qdio_set_data_div(qdio, &req->qdio_req, sg_nents(sg_req));
  zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);
  zfcp_qdio_set_scount(qdio, &req->qdio_req);
  return 0;
 }


 if (zfcp_qdio_sg_one_sbale(sg_req) && zfcp_qdio_sg_one_sbale(sg_resp)) {
  zfcp_fsf_setup_ct_els_unchained(qdio, &req->qdio_req,
      sg_req, sg_resp);
  return 0;
 }

 if (!(feat & FSF_FEATURE_ELS_CT_CHAINED_SBALS))
  return -EOPNOTSUPP;

 if (zfcp_qdio_sbals_from_sg(qdio, &req->qdio_req, sg_req))
  return -EIO;

 qtcb->bottom.support.req_buf_length = zfcp_qdio_real_bytes(sg_req);

 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);
 zfcp_qdio_skip_to_last_sbale(qdio, &req->qdio_req);

 if (zfcp_qdio_sbals_from_sg(qdio, &req->qdio_req, sg_resp))
  return -EIO;

 qtcb->bottom.support.resp_buf_length = zfcp_qdio_real_bytes(sg_resp);

 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 return 0;
}
