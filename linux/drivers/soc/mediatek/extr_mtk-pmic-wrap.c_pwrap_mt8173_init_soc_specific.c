
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmic_wrapper {int dev; TYPE_1__* slave; } ;
struct TYPE_2__ {int * dew_regs; } ;


 int EFAULT ;
 size_t PWRAP_DEW_EVENT_OUT_EN ;
 size_t PWRAP_DEW_EVENT_SRC_EN ;
 int dev_err (int ,char*) ;
 scalar_t__ pwrap_write (struct pmic_wrapper*,int ,int) ;

__attribute__((used)) static int pwrap_mt8173_init_soc_specific(struct pmic_wrapper *wrp)
{

 if (pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_EVENT_OUT_EN],
   0x1) ||
     pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_EVENT_SRC_EN],
   0xffff)) {
  dev_err(wrp->dev, "enable dewrap fail\n");
  return -EFAULT;
 }

 return 0;
}
