
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmic_wrapper {int dev; TYPE_1__* master; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int caps; } ;


 scalar_t__ HAS_CAP (int ,int ) ;
 int IRQ_HANDLED ;
 int PWRAP_CAP_INT1_EN ;
 int PWRAP_INT1_CLR ;
 int PWRAP_INT1_FLG ;
 int PWRAP_INT_CLR ;
 int PWRAP_INT_FLG ;
 int dev_err (int ,char*,int ) ;
 int pwrap_readl (struct pmic_wrapper*,int ) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
{
 u32 rdata;
 struct pmic_wrapper *wrp = dev_id;

 rdata = pwrap_readl(wrp, PWRAP_INT_FLG);
 dev_err(wrp->dev, "unexpected interrupt int=0x%x\n", rdata);
 pwrap_writel(wrp, 0xffffffff, PWRAP_INT_CLR);

 if (HAS_CAP(wrp->master->caps, PWRAP_CAP_INT1_EN)) {
  rdata = pwrap_readl(wrp, PWRAP_INT1_FLG);
  dev_err(wrp->dev, "unexpected interrupt int1=0x%x\n", rdata);
  pwrap_writel(wrp, 0xffffffff, PWRAP_INT1_CLR);
 }

 return IRQ_HANDLED;
}
