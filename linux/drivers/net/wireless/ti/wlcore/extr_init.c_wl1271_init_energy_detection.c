
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int wl1271_acx_cca_threshold (struct wl1271*) ;

int wl1271_init_energy_detection(struct wl1271 *wl)
{
 int ret;

 ret = wl1271_acx_cca_threshold(wl);
 if (ret < 0)
  return ret;

 return 0;
}
