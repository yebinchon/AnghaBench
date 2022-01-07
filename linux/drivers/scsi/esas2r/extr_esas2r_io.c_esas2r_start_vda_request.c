
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct esas2r_request {int vda_req_sz; TYPE_4__* vrq; TYPE_2__* vrq_md; int req_stat; } ;
struct esas2r_inbound_list_source_entry {int length; int address; } ;
struct TYPE_5__ {scalar_t__ virt_addr; } ;
struct esas2r_adapter {scalar_t__ last_write; scalar_t__ list_size; int max_vdareq_size; int flags; TYPE_1__ inbound_list_md; } ;
struct TYPE_7__ {int handle; } ;
struct TYPE_8__ {TYPE_3__ scsi; } ;
struct TYPE_6__ {int phys_addr; } ;


 int AF_COMM_LIST_TOGGLE ;
 int MU_ILW_TOGGLE ;
 int MU_IN_LIST_WRITE ;
 int RQ_SIZE_DEFAULT ;
 int RS_STARTED ;
 int clear_bit (int ,int *) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int esas2r_trace (char*,int) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_start_vda_request(struct esas2r_adapter *a,
         struct esas2r_request *rq)
{
 struct esas2r_inbound_list_source_entry *element;
 u32 dw;

 rq->req_stat = RS_STARTED;




 a->last_write++;
 if (a->last_write >= a->list_size) {
  a->last_write = 0;

  if (test_bit(AF_COMM_LIST_TOGGLE, &a->flags))
   clear_bit(AF_COMM_LIST_TOGGLE, &a->flags);
  else
   set_bit(AF_COMM_LIST_TOGGLE, &a->flags);
 }

 element =
  (struct esas2r_inbound_list_source_entry *)a->inbound_list_md.
  virt_addr
  + a->last_write;


 if (rq->vda_req_sz == RQ_SIZE_DEFAULT)
  rq->vda_req_sz = (u16)(a->max_vdareq_size / sizeof(u32));

 element->address = cpu_to_le64(rq->vrq_md->phys_addr);
 element->length = cpu_to_le32(rq->vda_req_sz);


 dw = a->last_write;

 if (test_bit(AF_COMM_LIST_TOGGLE, &a->flags))
  dw |= MU_ILW_TOGGLE;

 esas2r_trace("rq->vrq->scsi.handle:%x", rq->vrq->scsi.handle);
 esas2r_trace("dw:%x", dw);
 esas2r_trace("rq->vda_req_sz:%x", rq->vda_req_sz);
 esas2r_write_register_dword(a, MU_IN_LIST_WRITE, dw);
}
