
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char AP_PWR_DOWN ;
 char NVEC_SLEEP ;
 int nvec_power_handle ;
 int nvec_toggle_global_events (int ,int) ;
 int nvec_write_async (int ,char*,int) ;

__attribute__((used)) static void nvec_power_off(void)
{
 char ap_pwr_down[] = { NVEC_SLEEP, AP_PWR_DOWN };

 nvec_toggle_global_events(nvec_power_handle, 0);
 nvec_write_async(nvec_power_handle, ap_pwr_down, 2);
}
