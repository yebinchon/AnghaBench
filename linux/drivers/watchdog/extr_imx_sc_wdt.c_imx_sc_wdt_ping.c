
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct arm_smccc_res {int dummy; } ;


 int IMX_SIP_TIMER ;
 int IMX_SIP_TIMER_PING_WDOG ;
 int arm_smccc_smc (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int imx_sc_wdt_ping(struct watchdog_device *wdog)
{
 struct arm_smccc_res res;

 arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_PING_WDOG,
        0, 0, 0, 0, 0, 0, &res);

 return 0;
}
