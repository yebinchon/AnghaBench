
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_stats_len; } ;
struct wl1271 {TYPE_1__ stats; } ;
struct acx_header {int dummy; } ;


 int ACX_STATISTICS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int wl1271_cmd_interrogate (struct wl1271*,int ,void*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_statistics(struct wl1271 *wl, void *stats)
{
 int ret;

 wl1271_debug(DEBUG_ACX, "acx statistics");

 ret = wl1271_cmd_interrogate(wl, ACX_STATISTICS, stats,
         sizeof(struct acx_header),
         wl->stats.fw_stats_len);
 if (ret < 0) {
  wl1271_warning("acx statistics failed: %d", ret);
  return -ENOMEM;
 }

 return 0;
}
