
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ output; } ;
struct TYPE_4__ {TYPE_1__ fwlog; } ;
struct wl1271 {int quirks; TYPE_2__ conf; int watchdog_recovery; int dev; } ;


 scalar_t__ WL12XX_FWLOG_OUTPUT_DBG_PINS ;
 int WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED ;
 int msleep (int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int wl1271_info (char*) ;
 int wl12xx_cmd_stop_fwlog (struct wl1271*) ;
 scalar_t__ wlcore_event_fw_logger (struct wl1271*) ;

__attribute__((used)) static void wl12xx_read_fwlog_panic(struct wl1271 *wl)
{
 u32 end_of_log = 0;
 int error;

 if (wl->quirks & WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED)
  return;

 wl1271_info("Reading FW panic log");






 error = pm_runtime_get_sync(wl->dev);
 if (error < 0) {
  pm_runtime_put_noidle(wl->dev);
  return;
 }
 if (!wl->watchdog_recovery &&
     wl->conf.fwlog.output != WL12XX_FWLOG_OUTPUT_DBG_PINS)
  wl12xx_cmd_stop_fwlog(wl);


 do {
  end_of_log = wlcore_event_fw_logger(wl);
  if (end_of_log == 0) {
   msleep(100);
   end_of_log = wlcore_event_fw_logger(wl);
  }
 } while (end_of_log != 0);
}
