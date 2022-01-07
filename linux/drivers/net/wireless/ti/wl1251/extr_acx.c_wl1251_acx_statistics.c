
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_statistics {int dummy; } ;


 int ACX_STATISTICS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int wl1251_cmd_interrogate (struct wl1251*,int ,struct acx_statistics*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_statistics(struct wl1251 *wl, struct acx_statistics *stats)
{
 int ret;

 wl1251_debug(DEBUG_ACX, "acx statistics");

 ret = wl1251_cmd_interrogate(wl, ACX_STATISTICS, stats,
         sizeof(*stats));
 if (ret < 0) {
  wl1251_warning("acx statistics failed: %d", ret);
  return -ENOMEM;
 }

 return 0;
}
