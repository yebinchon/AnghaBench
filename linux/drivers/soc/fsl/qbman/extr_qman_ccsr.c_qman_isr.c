
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {size_t mask; int txt; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QMAN_ERRS_TO_DISABLE ;
 int REG_ECSR ;
 int REG_ERR_IER ;
 int REG_ERR_ISR ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err_ratelimited (struct device*,char*,int ) ;
 int log_additional_error_info (struct device*,size_t,size_t) ;
 size_t qm_ccsr_in (int ) ;
 int qm_ccsr_out (int ,size_t) ;
 TYPE_1__* qman_hwerr_txts ;

__attribute__((used)) static irqreturn_t qman_isr(int irq, void *ptr)
{
 u32 isr_val, ier_val, ecsr_val, isr_mask, i;
 struct device *dev = ptr;

 ier_val = qm_ccsr_in(REG_ERR_IER);
 isr_val = qm_ccsr_in(REG_ERR_ISR);
 ecsr_val = qm_ccsr_in(REG_ECSR);
 isr_mask = isr_val & ier_val;

 if (!isr_mask)
  return IRQ_NONE;

 for (i = 0; i < ARRAY_SIZE(qman_hwerr_txts); i++) {
  if (qman_hwerr_txts[i].mask & isr_mask) {
   dev_err_ratelimited(dev, "ErrInt: %s\n",
         qman_hwerr_txts[i].txt);
   if (qman_hwerr_txts[i].mask & ecsr_val) {
    log_additional_error_info(dev, isr_mask,
         ecsr_val);

    qm_ccsr_out(REG_ECSR, ecsr_val);
   }
   if (qman_hwerr_txts[i].mask & QMAN_ERRS_TO_DISABLE) {
    dev_dbg(dev, "Disabling error 0x%x\n",
     qman_hwerr_txts[i].mask);
    ier_val &= ~qman_hwerr_txts[i].mask;
    qm_ccsr_out(REG_ERR_IER, ier_val);
   }
  }
 }
 qm_ccsr_out(REG_ERR_ISR, isr_val);

 return IRQ_HANDLED;
}
