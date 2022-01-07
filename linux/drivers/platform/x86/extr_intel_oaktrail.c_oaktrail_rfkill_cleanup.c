
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __oaktrail_rfkill_cleanup (int ) ;
 int bt_rfkill ;
 int gps_rfkill ;
 int wifi_rfkill ;
 int wwan_rfkill ;

__attribute__((used)) static void oaktrail_rfkill_cleanup(void)
{
 __oaktrail_rfkill_cleanup(wifi_rfkill);
 __oaktrail_rfkill_cleanup(bt_rfkill);
 __oaktrail_rfkill_cleanup(gps_rfkill);
 __oaktrail_rfkill_cleanup(wwan_rfkill);
}
