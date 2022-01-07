
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int joined; int dtim_period; int beacon_int; int channel; } ;


 int BSS_TYPE_STA_BSS ;
 int JOIN_EVENT_COMPLETE_ID ;
 int wl1251_cmd_join (struct wl1251*,int ,int ,int ,int ) ;
 int wl1251_event_wait (struct wl1251*,int ,int) ;
 int wl1251_warning (char*) ;

__attribute__((used)) static void enable_tx_for_packet_injection(struct wl1251 *wl)
{
 int ret;

 ret = wl1251_cmd_join(wl, BSS_TYPE_STA_BSS, wl->channel,
         wl->beacon_int, wl->dtim_period);
 if (ret < 0) {
  wl1251_warning("join failed");
  return;
 }

 ret = wl1251_event_wait(wl, JOIN_EVENT_COMPLETE_ID, 100);
 if (ret < 0) {
  wl1251_warning("join timeout");
  return;
 }

 wl->joined = 1;
}
