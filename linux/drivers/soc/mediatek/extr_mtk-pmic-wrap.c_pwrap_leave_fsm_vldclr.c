
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_wrapper {int dummy; } ;


 int PWRAP_WACS2_VLDCLR ;
 scalar_t__ pwrap_is_fsm_vldclr (struct pmic_wrapper*) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static inline void pwrap_leave_fsm_vldclr(struct pmic_wrapper *wrp)
{
 if (pwrap_is_fsm_vldclr(wrp))
  pwrap_writel(wrp, 1, PWRAP_WACS2_VLDCLR);
}
