
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ excessive_retries; scalar_t__ retry_count; int fw_stats_len; int fw_stats; } ;
struct wl1271 {TYPE_1__ stats; } ;


 int memset (int ,int ,int ) ;

void wl1271_debugfs_reset(struct wl1271 *wl)
{
 if (!wl->stats.fw_stats)
  return;

 memset(wl->stats.fw_stats, 0, wl->stats.fw_stats_len);
 wl->stats.retry_count = 0;
 wl->stats.excessive_retries = 0;
}
