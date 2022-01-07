
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {int req_q_free; } ;
struct TYPE_2__ {int qdio_outb_usage; } ;
struct zfcp_fsf_req {int req_id; int timer; TYPE_1__ qdio_req; int issued; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int req_no; int fsf_req_seq_no; int req_list; struct zfcp_qdio* qdio; } ;


 int EIO ;
 int atomic_read (int *) ;
 int del_timer (int *) ;
 int get_tod_clock () ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int zfcp_fsf_req_is_status_read_buffer (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_qdio_send (struct zfcp_qdio*,TYPE_1__*) ;
 int zfcp_reqlist_add (int ,struct zfcp_fsf_req*) ;
 int zfcp_reqlist_find_rm (int ,int) ;

__attribute__((used)) static int zfcp_fsf_req_send(struct zfcp_fsf_req *req)
{
 const bool is_srb = zfcp_fsf_req_is_status_read_buffer(req);
 struct zfcp_adapter *adapter = req->adapter;
 struct zfcp_qdio *qdio = adapter->qdio;
 int req_id = req->req_id;

 zfcp_reqlist_add(adapter->req_list, req);

 req->qdio_req.qdio_outb_usage = atomic_read(&qdio->req_q_free);
 req->issued = get_tod_clock();
 if (zfcp_qdio_send(qdio, &req->qdio_req)) {
  del_timer(&req->timer);

  zfcp_reqlist_find_rm(adapter->req_list, req_id);
  zfcp_erp_adapter_reopen(adapter, 0, "fsrs__1");
  return -EIO;
 }
 if (!is_srb)
  adapter->fsf_req_seq_no++;
 adapter->req_no++;

 return 0;
}
