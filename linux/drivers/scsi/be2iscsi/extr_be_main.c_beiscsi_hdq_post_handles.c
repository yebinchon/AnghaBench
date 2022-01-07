
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct phys_addr {int lo; int hi; } ;
struct hwi_controller {TYPE_2__* default_pdu_data; TYPE_1__* default_pdu_hdr; } ;
struct TYPE_12__ {int address_hi; int address_lo; } ;
struct TYPE_13__ {TYPE_4__ a32; } ;
struct TYPE_14__ {TYPE_5__ u; } ;
struct hd_async_handle {size_t is_header; size_t index; TYPE_6__ pa; } ;
struct TYPE_16__ {size_t pi; struct phys_addr* ring_base; } ;
struct TYPE_15__ {size_t pi; struct phys_addr* ring_base; } ;
struct hd_async_context {size_t num_entries; TYPE_8__ async_data; TYPE_7__ async_header; TYPE_3__* async_entry; } ;
struct beiscsi_hba {int db_va; struct hwi_controller* phwi_ctrlr; } ;
struct TYPE_11__ {struct hd_async_handle* data; struct hd_async_handle* header; } ;
struct TYPE_10__ {int id; int doorbell_offset; } ;
struct TYPE_9__ {int id; int doorbell_offset; } ;


 size_t DB_DEF_PDU_CQPROC_MASK ;
 size_t DB_DEF_PDU_CQPROC_SHIFT ;
 int DB_DEF_PDU_EVENT_SHIFT ;
 int DB_DEF_PDU_REARM_SHIFT ;
 int DB_DEF_PDU_RING_ID_MASK ;
 struct hd_async_context* HWI_GET_ASYNC_PDU_CTX (struct hwi_controller*,size_t) ;
 int WARN_ON (int) ;
 int iowrite32 (int,int) ;

__attribute__((used)) static void
beiscsi_hdq_post_handles(struct beiscsi_hba *phba,
    u8 header, u8 ulp_num, u16 nbuf)
{
 struct hd_async_handle *pasync_handle;
 struct hd_async_context *pasync_ctx;
 struct hwi_controller *phwi_ctrlr;
 struct phys_addr *pasync_sge;
 u32 ring_id, doorbell = 0;
 u32 doorbell_offset;
 u16 prod, pi;

 phwi_ctrlr = phba->phwi_ctrlr;
 pasync_ctx = HWI_GET_ASYNC_PDU_CTX(phwi_ctrlr, ulp_num);
 if (header) {
  pasync_sge = pasync_ctx->async_header.ring_base;
  pi = pasync_ctx->async_header.pi;
  ring_id = phwi_ctrlr->default_pdu_hdr[ulp_num].id;
  doorbell_offset = phwi_ctrlr->default_pdu_hdr[ulp_num].
     doorbell_offset;
 } else {
  pasync_sge = pasync_ctx->async_data.ring_base;
  pi = pasync_ctx->async_data.pi;
  ring_id = phwi_ctrlr->default_pdu_data[ulp_num].id;
  doorbell_offset = phwi_ctrlr->default_pdu_data[ulp_num].
     doorbell_offset;
 }

 for (prod = 0; prod < nbuf; prod++) {
  if (header)
   pasync_handle = pasync_ctx->async_entry[pi].header;
  else
   pasync_handle = pasync_ctx->async_entry[pi].data;
  WARN_ON(pasync_handle->is_header != header);
  WARN_ON(pasync_handle->index != pi);

  if (nbuf == pasync_ctx->num_entries) {

   pasync_sge[pi].hi = pasync_handle->pa.u.a32.address_lo;
   pasync_sge[pi].lo = pasync_handle->pa.u.a32.address_hi;
  }
  if (++pi == pasync_ctx->num_entries)
   pi = 0;
 }

 if (header)
  pasync_ctx->async_header.pi = pi;
 else
  pasync_ctx->async_data.pi = pi;

 doorbell |= ring_id & DB_DEF_PDU_RING_ID_MASK;
 doorbell |= 1 << DB_DEF_PDU_REARM_SHIFT;
 doorbell |= 0 << DB_DEF_PDU_EVENT_SHIFT;
 doorbell |= (prod & DB_DEF_PDU_CQPROC_MASK) << DB_DEF_PDU_CQPROC_SHIFT;
 iowrite32(doorbell, phba->db_va + doorbell_offset);
}
