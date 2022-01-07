
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wl1271 {int dummy; } ;


 int wl1271_info (char*,int,int) ;

__attribute__((used)) static void wlcore_event_time_sync(struct wl1271 *wl,
       u16 tsf_high_msb, u16 tsf_high_lsb,
       u16 tsf_low_msb, u16 tsf_low_lsb)
{
 u32 clock_low;
 u32 clock_high;

 clock_high = (tsf_high_msb << 16) | tsf_high_lsb;
 clock_low = (tsf_low_msb << 16) | tsf_low_lsb;

 wl1271_info("TIME_SYNC_EVENT_ID: clock_high %u, clock low %u",
      clock_high, clock_low);
}
