
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct zfcp_qdio {int req_q_lock; } ;
struct zfcp_fsf_req {struct zfcp_fsf_ct_els* data; int handler; TYPE_3__* qtcb; int qdio_req; int status; } ;
struct zfcp_fsf_ct_els {int d_id; int resp; int req; } ;
struct zfcp_adapter {struct zfcp_qdio* qdio; } ;
struct TYPE_4__ {int d_id; } ;
struct TYPE_5__ {TYPE_1__ support; } ;
struct TYPE_6__ {TYPE_2__ bottom; } ;


 int EIO ;
 int FSF_QTCB_SEND_ELS ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_WRITE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int hton24 (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_adapter_multi_buffer_active (struct zfcp_adapter*) ;
 int zfcp_dbf_san_req (char*,struct zfcp_fsf_req*,int ) ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_send_els_handler ;
 int zfcp_fsf_setup_ct_els (struct zfcp_fsf_req*,int ,int ,unsigned int) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_sbal_limit (struct zfcp_qdio*,int *,int) ;

int zfcp_fsf_send_els(struct zfcp_adapter *adapter, u32 d_id,
        struct zfcp_fsf_ct_els *els, unsigned int timeout)
{
 struct zfcp_fsf_req *req;
 struct zfcp_qdio *qdio = adapter->qdio;
 int ret = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_SEND_ELS,
      SBAL_SFLAGS0_TYPE_WRITE_READ, ((void*)0));

 if (IS_ERR(req)) {
  ret = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;

 if (!zfcp_adapter_multi_buffer_active(adapter))
  zfcp_qdio_sbal_limit(qdio, &req->qdio_req, 2);

 ret = zfcp_fsf_setup_ct_els(req, els->req, els->resp, timeout);

 if (ret)
  goto failed_send;

 hton24(req->qtcb->bottom.support.d_id, d_id);
 req->handler = zfcp_fsf_send_els_handler;
 els->d_id = d_id;
 req->data = els;

 zfcp_dbf_san_req("fssels1", req, d_id);

 ret = zfcp_fsf_req_send(req);
 if (ret)
  goto failed_send;


 goto out;

failed_send:
 zfcp_fsf_req_free(req);
out:
 spin_unlock_irq(&qdio->req_q_lock);
 return ret;
}
