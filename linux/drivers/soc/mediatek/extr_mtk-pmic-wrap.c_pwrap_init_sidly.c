
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmic_wrapper {int dev; TYPE_1__* slave; } ;
struct TYPE_2__ {int * dew_regs; } ;


 int EIO ;
 size_t PWRAP_DEW_READ_TEST ;
 int PWRAP_DEW_READ_TEST_VAL ;
 int PWRAP_SIDLY ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int pwrap_read (struct pmic_wrapper*,int ,int*) ;
 int pwrap_writel (struct pmic_wrapper*,char,int ) ;

__attribute__((used)) static int pwrap_init_sidly(struct pmic_wrapper *wrp)
{
 u32 rdata;
 u32 i;
 u32 pass = 0;
 signed char dly[16] = {
  -1, 0, 1, 0, 2, -1, 1, 1, 3, -1, -1, -1, 3, -1, 2, 1
 };

 for (i = 0; i < 4; i++) {
  pwrap_writel(wrp, i, PWRAP_SIDLY);
  pwrap_read(wrp, wrp->slave->dew_regs[PWRAP_DEW_READ_TEST],
      &rdata);
  if (rdata == PWRAP_DEW_READ_TEST_VAL) {
   dev_dbg(wrp->dev, "[Read Test] pass, SIDLY=%x\n", i);
   pass |= 1 << i;
  }
 }

 if (dly[pass] < 0) {
  dev_err(wrp->dev, "sidly pass range 0x%x not continuous\n",
    pass);
  return -EIO;
 }

 pwrap_writel(wrp, dly[pass], PWRAP_SIDLY);

 return 0;
}
