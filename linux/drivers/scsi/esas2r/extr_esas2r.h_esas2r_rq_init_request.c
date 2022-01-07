
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int handle; int ppsense_buf; scalar_t__ reserved; scalar_t__ flags; scalar_t__ chain_offset; scalar_t__ sg_list_offset; int sense_len; int function; } ;
union atto_vda_req {TYPE_2__ scsi; } ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__* dwords; } ;
struct esas2r_request {TYPE_3__* vrq_md; int vda_req_sz; TYPE_1__ func_rsp; int req_type; int req_stat; scalar_t__ timeout; scalar_t__ flags; int comp_cb; int * interrupt_cb; void* data_buf; int sg_table_head; union atto_vda_req* vrq; } ;
struct esas2r_adapter {int cmd_ref_no; struct esas2r_request** req_table; } ;
struct TYPE_6__ {scalar_t__ phys_addr; } ;


 int INIT_LIST_HEAD (int *) ;
 size_t LOWORD (int) ;
 int RQ_SIZE_DEFAULT ;
 int RS_PENDING ;
 int RT_INI_REQ ;
 int SENSE_DATA_SZ ;
 int VDA_FUNC_SCSI ;
 int cpu_to_le64 (scalar_t__) ;
 int esas2r_bugon () ;
 int esas2r_complete_request_cb ;

__attribute__((used)) static inline void esas2r_rq_init_request(struct esas2r_request *rq,
       struct esas2r_adapter *a)
{
 union atto_vda_req *vrq = rq->vrq;

 INIT_LIST_HEAD(&rq->sg_table_head);
 rq->data_buf = (void *)(vrq + 1);
 rq->interrupt_cb = ((void*)0);
 rq->comp_cb = esas2r_complete_request_cb;
 rq->flags = 0;
 rq->timeout = 0;
 rq->req_stat = RS_PENDING;
 rq->req_type = RT_INI_REQ;


 rq->func_rsp.dwords[0] = 0;
 rq->func_rsp.dwords[1] = 0;
 rq->vda_req_sz = RQ_SIZE_DEFAULT;



 if (a->req_table[LOWORD(vrq->scsi.handle)])
  esas2r_bugon();




 a->req_table[LOWORD(vrq->scsi.handle)] = rq;





 vrq->scsi.handle = (a->cmd_ref_no++ << 16) | (u16)vrq->scsi.handle;






 vrq->scsi.function = VDA_FUNC_SCSI;
 vrq->scsi.sense_len = SENSE_DATA_SZ;


 vrq->scsi.sg_list_offset = 0;
 vrq->scsi.chain_offset = 0;
 vrq->scsi.flags = 0;
 vrq->scsi.reserved = 0;


 vrq->scsi.ppsense_buf
  = cpu_to_le64(rq->vrq_md->phys_addr +
         sizeof(union atto_vda_req));
}
