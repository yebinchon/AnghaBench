
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int net_closed; } ;


 int DBG_88E (char*,...) ;
 int LED_CTL_POWER_OFF ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int led_control_8188eu (struct adapter*,int ) ;
 int rtw_ips_dev_unload (struct adapter*) ;

void rtw_ips_pwr_down(struct adapter *padapter)
{
 unsigned long start_time = jiffies;

 DBG_88E("===> rtw_ips_pwr_down...................\n");

 padapter->net_closed = 1;

 led_control_8188eu(padapter, LED_CTL_POWER_OFF);

 rtw_ips_dev_unload(padapter);
 DBG_88E("<=== rtw_ips_pwr_down..................... in %dms\n",
  jiffies_to_msecs(jiffies - start_time));
}
