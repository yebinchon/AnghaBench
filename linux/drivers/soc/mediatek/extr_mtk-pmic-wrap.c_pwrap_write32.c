
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmic_wrapper {int dummy; } ;


 int PWRAP_WACS2_CMD ;
 int pwrap_is_fsm_idle ;
 int pwrap_leave_fsm_vldclr (struct pmic_wrapper*) ;
 int pwrap_read (struct pmic_wrapper*,int,int*) ;
 int pwrap_wait_for_state (struct pmic_wrapper*,int ) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_write32(struct pmic_wrapper *wrp, u32 adr, u32 wdata)
{
 int ret, msb, rdata;

 for (msb = 0; msb < 2; msb++) {
  ret = pwrap_wait_for_state(wrp, pwrap_is_fsm_idle);
  if (ret) {
   pwrap_leave_fsm_vldclr(wrp);
   return ret;
  }

  pwrap_writel(wrp, (1 << 31) | (msb << 30) | (adr << 16) |
        ((wdata >> (msb * 16)) & 0xffff),
        PWRAP_WACS2_CMD);
  if (!msb)
   pwrap_read(wrp, adr, &rdata);
 }

 return 0;
}
