
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {int req_q_lock; struct zfcp_adapter* adapter; } ;
struct zfcp_fsf_req {struct fsf_status_read_buffer* data; int qdio_req; } ;
struct TYPE_2__ {int sr_data; int status_read_req; } ;
struct zfcp_adapter {TYPE_1__ pool; } ;
struct page {int dummy; } ;
struct fsf_status_read_buffer {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int FSF_QTCB_UNSOLICITED_STATUS ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_STATUS ;
 struct page* mempool_alloc (int ,int ) ;
 int mempool_free (int ,int ) ;
 int memset (struct fsf_status_read_buffer*,int ,int) ;
 struct fsf_status_read_buffer* page_address (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int virt_to_page (struct fsf_status_read_buffer*) ;
 int zfcp_dbf_hba_fsf_uss (char*,struct zfcp_fsf_req*) ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_qdio_fill_next (struct zfcp_qdio*,int *,struct fsf_status_read_buffer*,int) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;
 int zfcp_qdio_set_sbale_last (struct zfcp_qdio*,int *) ;

int zfcp_fsf_status_read(struct zfcp_qdio *qdio)
{
 struct zfcp_adapter *adapter = qdio->adapter;
 struct zfcp_fsf_req *req;
 struct fsf_status_read_buffer *sr_buf;
 struct page *page;
 int retval = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_UNSOLICITED_STATUS,
      SBAL_SFLAGS0_TYPE_STATUS,
      adapter->pool.status_read_req);
 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 page = mempool_alloc(adapter->pool.sr_data, GFP_ATOMIC);
 if (!page) {
  retval = -ENOMEM;
  goto failed_buf;
 }
 sr_buf = page_address(page);
 memset(sr_buf, 0, sizeof(*sr_buf));
 req->data = sr_buf;

 zfcp_qdio_fill_next(qdio, &req->qdio_req, sr_buf, sizeof(*sr_buf));
 zfcp_qdio_set_sbale_last(qdio, &req->qdio_req);

 retval = zfcp_fsf_req_send(req);
 if (retval)
  goto failed_req_send;


 goto out;

failed_req_send:
 req->data = ((void*)0);
 mempool_free(virt_to_page(sr_buf), adapter->pool.sr_data);
failed_buf:
 zfcp_dbf_hba_fsf_uss("fssr__1", req);
 zfcp_fsf_req_free(req);
out:
 spin_unlock_irq(&qdio->req_q_lock);
 return retval;
}
