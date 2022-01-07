
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmic_wrapper {TYPE_1__* slave; } ;
struct TYPE_2__ {int * dew_regs; } ;


 int PWRAP_CRC_EN ;
 size_t PWRAP_DEW_CRC_EN ;
 int PWRAP_EINT_STA0_ADR ;
 int PWRAP_INIT_DONE_MD32 ;
 int PWRAP_INIT_DONE_P2P ;
 int PWRAP_SIG_ADR ;
 int PWRAP_STAUPD_GRPEN ;
 int PWRAP_WACS_MD32_EN ;
 int PWRAP_WACS_P2P_EN ;
 int pwrap_write (struct pmic_wrapper*,int ,int) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_mt8183_init_soc_specific(struct pmic_wrapper *wrp)
{
 pwrap_writel(wrp, 0xf5, PWRAP_STAUPD_GRPEN);

 pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CRC_EN], 0x1);
 pwrap_writel(wrp, 1, PWRAP_CRC_EN);
 pwrap_writel(wrp, 0x416, PWRAP_SIG_ADR);
 pwrap_writel(wrp, 0x42e, PWRAP_EINT_STA0_ADR);

 pwrap_writel(wrp, 1, PWRAP_WACS_P2P_EN);
 pwrap_writel(wrp, 1, PWRAP_WACS_MD32_EN);
 pwrap_writel(wrp, 1, PWRAP_INIT_DONE_P2P);
 pwrap_writel(wrp, 1, PWRAP_INIT_DONE_MD32);

 return 0;
}
