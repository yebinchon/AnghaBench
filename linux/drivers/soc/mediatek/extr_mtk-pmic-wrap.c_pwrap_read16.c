
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmic_wrapper {int dummy; } ;


 int PWRAP_GET_WACS_RDATA (int ) ;
 int PWRAP_WACS2_CMD ;
 int PWRAP_WACS2_RDATA ;
 int PWRAP_WACS2_VLDCLR ;
 int pwrap_is_fsm_idle ;
 int pwrap_is_fsm_vldclr ;
 int pwrap_leave_fsm_vldclr (struct pmic_wrapper*) ;
 int pwrap_readl (struct pmic_wrapper*,int ) ;
 int pwrap_wait_for_state (struct pmic_wrapper*,int ) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_read16(struct pmic_wrapper *wrp, u32 adr, u32 *rdata)
{
 int ret;

 ret = pwrap_wait_for_state(wrp, pwrap_is_fsm_idle);
 if (ret) {
  pwrap_leave_fsm_vldclr(wrp);
  return ret;
 }

 pwrap_writel(wrp, (adr >> 1) << 16, PWRAP_WACS2_CMD);

 ret = pwrap_wait_for_state(wrp, pwrap_is_fsm_vldclr);
 if (ret)
  return ret;

 *rdata = PWRAP_GET_WACS_RDATA(pwrap_readl(wrp, PWRAP_WACS2_RDATA));

 pwrap_writel(wrp, 1, PWRAP_WACS2_VLDCLR);

 return 0;
}
