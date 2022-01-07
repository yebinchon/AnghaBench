
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; unsigned int pretimeout; } ;
struct arm_smccc_res {scalar_t__ a0; } ;


 int EACCES ;
 int IMX_SIP_TIMER ;
 int IMX_SIP_TIMER_SET_PRETIME_WDOG ;
 int arm_smccc_smc (int ,int ,unsigned int,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
         unsigned int pretimeout)
{
 struct arm_smccc_res res;






 arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_PRETIME_WDOG,
        (wdog->timeout - pretimeout) * 1000, 0, 0, 0,
        0, 0, &res);
 if (res.a0)
  return -EACCES;

 wdog->pretimeout = pretimeout;

 return 0;
}
