
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int wl1271_acx_rx_msdu_life_time (struct wl1271*) ;

__attribute__((used)) static int wl12xx_init_rx_config(struct wl1271 *wl)
{
 int ret;

 ret = wl1271_acx_rx_msdu_life_time(wl);
 if (ret < 0)
  return ret;

 return 0;
}
