
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_ccn {scalar_t__ base; int dt; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ CCN_MN_ERRINT_STATUS ;
 int CCN_MN_ERRINT_STATUS__INTREQ__DESSERT ;
 scalar_t__ CCN_MN_ERR_SIG_VAL_63_0 ;
 int CCN_MN_ERR_SIG_VAL_63_0__DT ;
 int IRQ_NONE ;
 int arm_ccn_error_handler (struct arm_ccn*,int*) ;
 int arm_ccn_pmu_overflow_handler (int *) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t arm_ccn_irq_handler(int irq, void *dev_id)
{
 irqreturn_t res = IRQ_NONE;
 struct arm_ccn *ccn = dev_id;
 u32 err_sig_val[6];
 u32 err_or;
 int i;


 err_or = err_sig_val[0] = readl(ccn->base + CCN_MN_ERR_SIG_VAL_63_0);
 if (err_or & CCN_MN_ERR_SIG_VAL_63_0__DT) {
  err_or &= ~CCN_MN_ERR_SIG_VAL_63_0__DT;
  res = arm_ccn_pmu_overflow_handler(&ccn->dt);
 }


 for (i = 1; i < ARRAY_SIZE(err_sig_val); i++) {
  err_sig_val[i] = readl(ccn->base +
    CCN_MN_ERR_SIG_VAL_63_0 + i * 4);
  err_or |= err_sig_val[i];
 }
 if (err_or)
  res |= arm_ccn_error_handler(ccn, err_sig_val);

 if (res != IRQ_NONE)
  writel(CCN_MN_ERRINT_STATUS__INTREQ__DESSERT,
    ccn->base + CCN_MN_ERRINT_STATUS);

 return res;
}
