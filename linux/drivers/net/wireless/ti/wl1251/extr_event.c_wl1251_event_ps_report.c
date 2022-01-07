
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int psm_entry_retry; int station_mode; } ;
struct event_mailbox {int ps_status; } ;


 int DEBUG_EVENT ;
 int DEBUG_PSM ;




 int STATION_POWER_SAVE_MODE ;
 int WL1251_PSM_ENTRY_RETRIES ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_error (char*) ;
 int wl1251_ps_set_mode (struct wl1251*,int ) ;

__attribute__((used)) static int wl1251_event_ps_report(struct wl1251 *wl,
      struct event_mailbox *mbox)
{
 int ret = 0;

 wl1251_debug(DEBUG_EVENT, "ps status: %x", mbox->ps_status);

 switch (mbox->ps_status) {
 case 131:
  wl1251_debug(DEBUG_PSM, "PSM entry failed");

  if (wl->station_mode != STATION_POWER_SAVE_MODE) {

   wl->psm_entry_retry = 0;
   break;
  }

  if (wl->psm_entry_retry < WL1251_PSM_ENTRY_RETRIES) {
   wl->psm_entry_retry++;
   ret = wl1251_ps_set_mode(wl, STATION_POWER_SAVE_MODE);
  } else {
   wl1251_error("Power save entry failed, giving up");
   wl->psm_entry_retry = 0;
  }
  break;
 case 130:
 case 129:
 case 128:
 default:
  wl->psm_entry_retry = 0;
  break;
 }

 return 0;
}
