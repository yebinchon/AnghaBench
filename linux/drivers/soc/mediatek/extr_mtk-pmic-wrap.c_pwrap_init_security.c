
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmic_wrapper {TYPE_2__* master; TYPE_1__* slave; } ;
struct TYPE_4__ {int arb_en_all; } ;
struct TYPE_3__ {int* dew_regs; } ;


 int EFAULT ;
 int PWRAP_CRC_EN ;
 size_t PWRAP_DEW_CRC_EN ;
 size_t PWRAP_DEW_CRC_VAL ;
 int PWRAP_HIPRIO_ARB_EN ;
 int PWRAP_SIG_ADR ;
 int PWRAP_SIG_MODE ;
 int pwrap_init_cipher (struct pmic_wrapper*) ;
 scalar_t__ pwrap_write (struct pmic_wrapper*,int,int) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_init_security(struct pmic_wrapper *wrp)
{
 int ret;


 ret = pwrap_init_cipher(wrp);
 if (ret)
  return ret;


 if (pwrap_write(wrp,
   wrp->slave->dew_regs[PWRAP_DEW_CRC_EN], 0x1))
  return -EFAULT;

 pwrap_writel(wrp, 0x1, PWRAP_CRC_EN);
 pwrap_writel(wrp, 0x0, PWRAP_SIG_MODE);
 pwrap_writel(wrp, wrp->slave->dew_regs[PWRAP_DEW_CRC_VAL],
       PWRAP_SIG_ADR);
 pwrap_writel(wrp,
       wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);

 return 0;
}
