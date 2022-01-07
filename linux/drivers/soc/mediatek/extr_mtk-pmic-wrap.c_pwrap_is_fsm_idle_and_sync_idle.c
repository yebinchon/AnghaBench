
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmic_wrapper {int dummy; } ;


 scalar_t__ PWRAP_GET_WACS_FSM (int) ;
 int PWRAP_STATE_SYNC_IDLE0 ;
 int PWRAP_WACS2_RDATA ;
 scalar_t__ PWRAP_WACS_FSM_IDLE ;
 int pwrap_readl (struct pmic_wrapper*,int ) ;

__attribute__((used)) static bool pwrap_is_fsm_idle_and_sync_idle(struct pmic_wrapper *wrp)
{
 u32 val = pwrap_readl(wrp, PWRAP_WACS2_RDATA);

 return (PWRAP_GET_WACS_FSM(val) == PWRAP_WACS_FSM_IDLE) &&
  (val & PWRAP_STATE_SYNC_IDLE0);
}
