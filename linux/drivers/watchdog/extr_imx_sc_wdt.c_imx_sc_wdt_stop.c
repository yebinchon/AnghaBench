
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct arm_smccc_res {scalar_t__ a0; } ;


 int EACCES ;
 int IMX_SIP_TIMER ;
 int IMX_SIP_TIMER_STOP_WDOG ;
 int arm_smccc_smc (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int imx_sc_wdt_stop(struct watchdog_device *wdog)
{
 struct arm_smccc_res res;

 arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_STOP_WDOG,
        0, 0, 0, 0, 0, 0, &res);

 return res.a0 ? -EACCES : 0;
}
