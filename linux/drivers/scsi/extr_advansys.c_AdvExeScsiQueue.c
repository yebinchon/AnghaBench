
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ target_id; void* scsiq_rptr; int carr_pa; int carr_va; int srb_tag; void* scsiq_ptr; int done_status; int host_status; } ;
struct TYPE_9__ {int req_addr; TYPE_2__ scsi_req_q; } ;
typedef TYPE_1__ adv_req_t ;
struct TYPE_12__ {int carr_pa; int next_vpa; void* areq_vpa; int carr_va; } ;
struct TYPE_11__ {scalar_t__ chip_type; TYPE_4__* icq_sp; int carr_pending_cnt; int iop_base; } ;
typedef int AdvPortAddr ;
typedef TYPE_2__ ADV_SCSI_REQ_Q ;
typedef TYPE_3__ ADV_DVC_VAR ;
typedef TYPE_4__ ADV_CARR_T ;


 int ADV_BUSY ;
 scalar_t__ ADV_CHIP_ASC3550 ;
 scalar_t__ ADV_CHIP_ASC38C0800 ;
 scalar_t__ ADV_CHIP_ASC38C1600 ;
 int ADV_ERROR ;
 scalar_t__ ADV_MAX_TID ;
 int ADV_SUCCESS ;
 int ADV_TICKLE_A ;
 int ADV_TICKLE_NOP ;
 int ASC_DBG (int,char*) ;
 int AdvWriteByteRegister (int ,int ,int ) ;
 int AdvWriteDWordRegister (int ,int ,int ) ;
 int IOPB_TICKLE ;
 int IOPDW_COMMA ;
 int QD_WITH_ERROR ;
 int QHSTA_M_INVALID_DEVICE ;
 TYPE_4__* adv_get_next_carrier (TYPE_3__*) ;
 void* cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int AdvExeScsiQueue(ADV_DVC_VAR *asc_dvc, adv_req_t *reqp)
{
 AdvPortAddr iop_base;
 ADV_CARR_T *new_carrp;
 ADV_SCSI_REQ_Q *scsiq = &reqp->scsi_req_q;




 if (scsiq->target_id > ADV_MAX_TID) {
  scsiq->host_status = QHSTA_M_INVALID_DEVICE;
  scsiq->done_status = QD_WITH_ERROR;
  return ADV_ERROR;
 }

 iop_base = asc_dvc->iop_base;





 new_carrp = adv_get_next_carrier(asc_dvc);
 if (!new_carrp) {
  ASC_DBG(1, "No free carriers\n");
  return ADV_BUSY;
 }

 asc_dvc->carr_pending_cnt++;


 scsiq->scsiq_ptr = cpu_to_le32(scsiq->srb_tag);
 scsiq->scsiq_rptr = cpu_to_le32(reqp->req_addr);

 scsiq->carr_va = asc_dvc->icq_sp->carr_va;
 scsiq->carr_pa = asc_dvc->icq_sp->carr_pa;






 asc_dvc->icq_sp->areq_vpa = scsiq->scsiq_rptr;






 asc_dvc->icq_sp->next_vpa = new_carrp->carr_pa;




 asc_dvc->icq_sp = new_carrp;

 if (asc_dvc->chip_type == ADV_CHIP_ASC3550 ||
     asc_dvc->chip_type == ADV_CHIP_ASC38C0800) {



  AdvWriteByteRegister(iop_base, IOPB_TICKLE, ADV_TICKLE_A);
  if (asc_dvc->chip_type == ADV_CHIP_ASC3550) {





   AdvWriteByteRegister(iop_base, IOPB_TICKLE,
          ADV_TICKLE_NOP);
  }
 } else if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {




  AdvWriteDWordRegister(iop_base, IOPDW_COMMA,
          le32_to_cpu(new_carrp->carr_pa));
 }

 return ADV_SUCCESS;
}
