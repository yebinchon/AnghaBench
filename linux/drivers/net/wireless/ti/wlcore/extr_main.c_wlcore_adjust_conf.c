
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_5__ {void* no_recovery; void* bug_on_recovery; } ;
struct TYPE_4__ {int output; scalar_t__ mem_blocks; void* mode; } ;
struct TYPE_6__ {TYPE_2__ recovery; TYPE_1__ fwlog; } ;
struct wl1271 {TYPE_3__ conf; } ;


 void* WL12XX_FWLOG_CONTINUOUS ;
 int WL12XX_FWLOG_OUTPUT_DBG_PINS ;
 int WL12XX_FWLOG_OUTPUT_HOST ;
 int WL12XX_FWLOG_OUTPUT_NONE ;
 int bug_on_recovery ;
 scalar_t__ fwlog_param ;
 int no_recovery ;
 int strcmp (scalar_t__,char*) ;
 int wl1271_error (char*,scalar_t__) ;

__attribute__((used)) static void wlcore_adjust_conf(struct wl1271 *wl)
{

 if (fwlog_param) {
  if (!strcmp(fwlog_param, "continuous")) {
   wl->conf.fwlog.mode = WL12XX_FWLOG_CONTINUOUS;
   wl->conf.fwlog.output = WL12XX_FWLOG_OUTPUT_HOST;
  } else if (!strcmp(fwlog_param, "dbgpins")) {
   wl->conf.fwlog.mode = WL12XX_FWLOG_CONTINUOUS;
   wl->conf.fwlog.output = WL12XX_FWLOG_OUTPUT_DBG_PINS;
  } else if (!strcmp(fwlog_param, "disable")) {
   wl->conf.fwlog.mem_blocks = 0;
   wl->conf.fwlog.output = WL12XX_FWLOG_OUTPUT_NONE;
  } else {
   wl1271_error("Unknown fwlog parameter %s", fwlog_param);
  }
 }

 if (bug_on_recovery != -1)
  wl->conf.recovery.bug_on_recovery = (u8) bug_on_recovery;

 if (no_recovery != -1)
  wl->conf.recovery.no_recovery = (u8) no_recovery;
}
