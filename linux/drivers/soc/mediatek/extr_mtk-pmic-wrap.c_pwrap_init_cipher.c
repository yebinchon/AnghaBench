
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pmic_wrapper {int dev; TYPE_2__* slave; TYPE_1__* master; } ;
struct TYPE_4__ {int type; int * dew_regs; } ;
struct TYPE_3__ {int type; } ;


 int EFAULT ;




 int PWRAP_CIPHER_EN ;
 int PWRAP_CIPHER_IV_SEL ;
 int PWRAP_CIPHER_KEY_SEL ;
 int PWRAP_CIPHER_LOAD ;
 int PWRAP_CIPHER_MODE ;
 int PWRAP_CIPHER_START ;
 int PWRAP_CIPHER_SWRST ;
 size_t PWRAP_DEW_CIPHER_EN ;
 size_t PWRAP_DEW_CIPHER_IV_SEL ;
 size_t PWRAP_DEW_CIPHER_KEY_SEL ;
 size_t PWRAP_DEW_CIPHER_LOAD ;
 size_t PWRAP_DEW_CIPHER_MODE ;
 size_t PWRAP_DEW_CIPHER_START ;
 size_t PWRAP_DEW_CIPHER_SWRST ;
 size_t PWRAP_DEW_WRITE_TEST ;
 int PWRAP_DEW_WRITE_TEST_VAL ;
 int dev_err (int ,char*,...) ;
 int pwrap_is_cipher_ready ;
 int pwrap_is_fsm_idle_and_sync_idle ;
 int pwrap_is_pmic_cipher_ready ;
 scalar_t__ pwrap_read (struct pmic_wrapper*,int ,int*) ;
 int pwrap_wait_for_state (struct pmic_wrapper*,int ) ;
 scalar_t__ pwrap_write (struct pmic_wrapper*,int ,int) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_init_cipher(struct pmic_wrapper *wrp)
{
 int ret;
 u32 rdata = 0;

 pwrap_writel(wrp, 0x1, PWRAP_CIPHER_SWRST);
 pwrap_writel(wrp, 0x0, PWRAP_CIPHER_SWRST);
 pwrap_writel(wrp, 0x1, PWRAP_CIPHER_KEY_SEL);
 pwrap_writel(wrp, 0x2, PWRAP_CIPHER_IV_SEL);

 switch (wrp->master->type) {
 case 131:
  pwrap_writel(wrp, 1, PWRAP_CIPHER_LOAD);
  pwrap_writel(wrp, 1, PWRAP_CIPHER_START);
  break;
 case 135:
 case 134:
 case 133:
 case 130:
 case 128:
  pwrap_writel(wrp, 1, PWRAP_CIPHER_EN);
  break;
 case 132:
  pwrap_writel(wrp, 0, PWRAP_CIPHER_EN);
  break;
 case 129:
  break;
 }


 pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_SWRST], 0x1);
 pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_SWRST], 0x0);
 pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_KEY_SEL], 0x1);
 pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_IV_SEL], 0x2);

 switch (wrp->slave->type) {
 case 136:
  pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_LOAD],
       0x1);
  pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_START],
       0x1);
  break;
 case 139:
 case 138:
 case 137:
  pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_EN],
       0x1);
  break;
 default:
  break;
 }


 ret = pwrap_wait_for_state(wrp, pwrap_is_cipher_ready);
 if (ret) {
  dev_err(wrp->dev, "cipher data ready@AP fail, ret=%d\n", ret);
  return ret;
 }


 ret = pwrap_wait_for_state(wrp, pwrap_is_pmic_cipher_ready);
 if (ret) {
  dev_err(wrp->dev,
   "timeout waiting for cipher data ready@PMIC\n");
  return ret;
 }


 pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_CIPHER_MODE], 0x1);
 ret = pwrap_wait_for_state(wrp, pwrap_is_fsm_idle_and_sync_idle);
 if (ret) {
  dev_err(wrp->dev, "cipher mode idle fail, ret=%d\n", ret);
  return ret;
 }

 pwrap_writel(wrp, 1, PWRAP_CIPHER_MODE);


 if (pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_WRITE_TEST],
   PWRAP_DEW_WRITE_TEST_VAL) ||
     pwrap_read(wrp, wrp->slave->dew_regs[PWRAP_DEW_WRITE_TEST],
         &rdata) ||
     (rdata != PWRAP_DEW_WRITE_TEST_VAL)) {
  dev_err(wrp->dev, "rdata=0x%04X\n", rdata);
  return -EFAULT;
 }

 return 0;
}
