
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_ccn {scalar_t__ base; int dev; } ;
typedef int irqreturn_t ;


 scalar_t__ CCN_MN_ERRINT_STATUS ;
 int CCN_MN_ERRINT_STATUS__ALL_ERRORS__DISABLE ;
 int IRQ_HANDLED ;
 int dev_err (int ,char*,...) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t arm_ccn_error_handler(struct arm_ccn *ccn,
  const u32 *err_sig_val)
{

 dev_err(ccn->dev, "Error reported in %08x%08x%08x%08x%08x%08x.\n",
   err_sig_val[5], err_sig_val[4], err_sig_val[3],
   err_sig_val[2], err_sig_val[1], err_sig_val[0]);
 dev_err(ccn->dev, "Disabling interrupt generation for all errors.\n");
 writel(CCN_MN_ERRINT_STATUS__ALL_ERRORS__DISABLE,
   ccn->base + CCN_MN_ERRINT_STATUS);

 return IRQ_HANDLED;
}
