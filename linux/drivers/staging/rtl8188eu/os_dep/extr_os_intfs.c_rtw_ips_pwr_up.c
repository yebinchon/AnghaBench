
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int DBG_88E (char*,...) ;
 int LED_CTL_NO_LINK ;
 int ips_netdrv_open (struct adapter*) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int led_control_8188eu (struct adapter*,int ) ;
 int rtw_reset_drv_sw (struct adapter*) ;

int rtw_ips_pwr_up(struct adapter *padapter)
{
 int result;
 unsigned long start_time = jiffies;

 DBG_88E("===>  rtw_ips_pwr_up..............\n");
 rtw_reset_drv_sw(padapter);

 result = ips_netdrv_open(padapter);

 led_control_8188eu(padapter, LED_CTL_NO_LINK);

 DBG_88E("<===  rtw_ips_pwr_up.............. in %dms\n",
  jiffies_to_msecs(jiffies - start_time));
 return result;
}
