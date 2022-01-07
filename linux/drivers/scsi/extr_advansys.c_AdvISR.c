
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ushort ;
typedef int uchar ;
typedef void* u32 ;
struct TYPE_15__ {long data_cnt; scalar_t__ cntl; int target_id; scalar_t__ scsi_status; scalar_t__ host_status; int done_status; } ;
struct TYPE_14__ {TYPE_2__ scsi_req_q; } ;
typedef TYPE_1__ adv_req_t ;
typedef int __le32 ;
struct TYPE_17__ {int carr_va; int next_vpa; int areq_vpa; } ;
struct TYPE_16__ {scalar_t__ chip_type; scalar_t__ carr_pending_cnt; TYPE_4__* carr_freelist; TYPE_4__* irq_sp; int iop_base; } ;
typedef int AdvPortAddr ;
typedef TYPE_2__ ADV_SCSI_REQ_Q ;
typedef TYPE_3__ ADV_DVC_VAR ;
typedef TYPE_4__ ADV_CARR_T ;


 int ADV_ASYNC_CARRIER_READY_FAILURE ;
 scalar_t__ ADV_CHIP_ASC3550 ;
 scalar_t__ ADV_CHIP_ASC38C0800 ;
 int ADV_FALSE ;
 int ADV_GET_CARRP (int) ;
 int ADV_INTR_STATUS_INTRA ;
 int ADV_INTR_STATUS_INTRB ;
 int ADV_INTR_STATUS_INTRC ;
 int ADV_RQ_DONE ;
 int ADV_RQ_GOOD ;
 int ADV_TICKLE_A ;
 int ADV_TICKLE_NOP ;
 int ADV_TID_TO_TIDMASK (int ) ;
 int ADV_TRUE ;
 int ASC_DBG (int,char*,TYPE_4__*,void*) ;
 int ASC_MC_INTRB_CODE ;
 int AdvReadByteLram (int ,int ,int) ;
 int AdvReadByteRegister (int ,int ) ;
 int AdvWriteByteRegister (int ,int ,int ) ;
 int IOPB_INTR_STATUS_REG ;
 int IOPB_TICKLE ;
 int QD_NO_ERROR ;
 int adv_async_callback (TYPE_3__*,int) ;
 TYPE_4__* adv_get_carrier (TYPE_3__*,int ) ;
 TYPE_1__* adv_get_reqp (TYPE_3__*,void*) ;
 int adv_isr_callback (TYPE_3__*,TYPE_2__*) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static int AdvISR(ADV_DVC_VAR *asc_dvc)
{
 AdvPortAddr iop_base;
 uchar int_stat;
 ushort target_bit;
 ADV_CARR_T *free_carrp;
 __le32 irq_next_vpa;
 ADV_SCSI_REQ_Q *scsiq;
 adv_req_t *reqp;

 iop_base = asc_dvc->iop_base;


 int_stat = AdvReadByteRegister(iop_base, IOPB_INTR_STATUS_REG);

 if ((int_stat & (ADV_INTR_STATUS_INTRA | ADV_INTR_STATUS_INTRB |
    ADV_INTR_STATUS_INTRC)) == 0) {
  return ADV_FALSE;
 }






 if (int_stat & ADV_INTR_STATUS_INTRB) {
  uchar intrb_code;

  AdvReadByteLram(iop_base, ASC_MC_INTRB_CODE, intrb_code);

  if (asc_dvc->chip_type == ADV_CHIP_ASC3550 ||
      asc_dvc->chip_type == ADV_CHIP_ASC38C0800) {
   if (intrb_code == ADV_ASYNC_CARRIER_READY_FAILURE &&
       asc_dvc->carr_pending_cnt != 0) {
    AdvWriteByteRegister(iop_base, IOPB_TICKLE,
           ADV_TICKLE_A);
    if (asc_dvc->chip_type == ADV_CHIP_ASC3550) {
     AdvWriteByteRegister(iop_base,
            IOPB_TICKLE,
            ADV_TICKLE_NOP);
    }
   }
  }

  adv_async_callback(asc_dvc, intrb_code);
 }




 while (((irq_next_vpa =
   le32_to_cpu(asc_dvc->irq_sp->next_vpa)) & ADV_RQ_DONE) != 0) {
  u32 pa_offset = le32_to_cpu(asc_dvc->irq_sp->areq_vpa);
  ASC_DBG(1, "irq_sp %p areq_vpa %u\n",
   asc_dvc->irq_sp, pa_offset);
  reqp = adv_get_reqp(asc_dvc, pa_offset);
  scsiq = &reqp->scsi_req_q;






  if ((irq_next_vpa & ADV_RQ_GOOD) != 0) {
   scsiq->done_status = QD_NO_ERROR;
   scsiq->host_status = scsiq->scsi_status = 0;
   scsiq->data_cnt = 0L;
  }






  free_carrp = asc_dvc->irq_sp;
  asc_dvc->irq_sp = adv_get_carrier(asc_dvc,
        ADV_GET_CARRP(irq_next_vpa));

  free_carrp->next_vpa = asc_dvc->carr_freelist->carr_va;
  asc_dvc->carr_freelist = free_carrp;
  asc_dvc->carr_pending_cnt--;

  target_bit = ADV_TID_TO_TIDMASK(scsiq->target_id);




  scsiq->cntl = 0;





  adv_isr_callback(asc_dvc, scsiq);







 }
 return ADV_TRUE;
}
