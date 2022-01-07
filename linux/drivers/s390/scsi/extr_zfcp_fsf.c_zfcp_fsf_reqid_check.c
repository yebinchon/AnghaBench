
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {struct qdio_buffer** res_q; struct zfcp_adapter* adapter; } ;
struct zfcp_fsf_req {int dummy; } ;
struct zfcp_adapter {TYPE_1__* ccw_device; int req_list; } ;
struct qdio_buffer_element {int eflags; scalar_t__ addr; } ;
struct qdio_buffer {struct qdio_buffer_element* element; } ;
struct TYPE_2__ {int dev; } ;


 int QDIO_MAX_ELEMENTS_PER_BUFFER ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int dev_name (int *) ;
 scalar_t__ likely (int) ;
 int panic (char*,unsigned long,int ) ;
 int zfcp_fsf_req_complete (struct zfcp_fsf_req*) ;
 int zfcp_qdio_siosl (struct zfcp_adapter*) ;
 struct zfcp_fsf_req* zfcp_reqlist_find_rm (int ,unsigned long) ;

void zfcp_fsf_reqid_check(struct zfcp_qdio *qdio, int sbal_idx)
{
 struct zfcp_adapter *adapter = qdio->adapter;
 struct qdio_buffer *sbal = qdio->res_q[sbal_idx];
 struct qdio_buffer_element *sbale;
 struct zfcp_fsf_req *fsf_req;
 unsigned long req_id;
 int idx;

 for (idx = 0; idx < QDIO_MAX_ELEMENTS_PER_BUFFER; idx++) {

  sbale = &sbal->element[idx];
  req_id = (unsigned long) sbale->addr;
  fsf_req = zfcp_reqlist_find_rm(adapter->req_list, req_id);

  if (!fsf_req) {




   zfcp_qdio_siosl(adapter);
   panic("error: unknown req_id (%lx) on adapter %s.\n",
         req_id, dev_name(&adapter->ccw_device->dev));
  }

  zfcp_fsf_req_complete(fsf_req);

  if (likely(sbale->eflags & SBAL_EFLAGS_LAST_ENTRY))
   break;
 }
}
