
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmic_wrapper {int dummy; } ;


 int PWRAP_WACS2_CMD ;
 int pwrap_is_fsm_idle ;
 int pwrap_leave_fsm_vldclr (struct pmic_wrapper*) ;
 int pwrap_wait_for_state (struct pmic_wrapper*,int ) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_write16(struct pmic_wrapper *wrp, u32 adr, u32 wdata)
{
 int ret;

 ret = pwrap_wait_for_state(wrp, pwrap_is_fsm_idle);
 if (ret) {
  pwrap_leave_fsm_vldclr(wrp);
  return ret;
 }

 pwrap_writel(wrp, (1 << 31) | ((adr >> 1) << 16) | wdata,
       PWRAP_WACS2_CMD);

 return 0;
}
