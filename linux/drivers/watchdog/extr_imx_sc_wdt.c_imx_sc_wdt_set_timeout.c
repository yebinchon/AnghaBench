
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct arm_smccc_res {scalar_t__ a0; } ;


 int EACCES ;
 int IMX_SIP_TIMER ;
 int IMX_SIP_TIMER_SET_TIMEOUT_WDOG ;
 int arm_smccc_smc (int ,int ,unsigned int,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int imx_sc_wdt_set_timeout(struct watchdog_device *wdog,
    unsigned int timeout)
{
 struct arm_smccc_res res;

 wdog->timeout = timeout;
 arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_TIMEOUT_WDOG,
        timeout * 1000, 0, 0, 0, 0, 0, &res);

 return res.a0 ? -EACCES : 0;
}
