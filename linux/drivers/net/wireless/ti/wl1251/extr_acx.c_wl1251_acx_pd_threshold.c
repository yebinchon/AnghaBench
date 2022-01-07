
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_packet_detection {int dummy; } ;


 int ACX_PD_THRESHOLD ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_packet_detection*) ;
 struct acx_packet_detection* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_packet_detection*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_pd_threshold(struct wl1251 *wl)
{
 struct acx_packet_detection *pd;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx data pd threshold");

 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;



 ret = wl1251_cmd_configure(wl, ACX_PD_THRESHOLD, pd, sizeof(*pd));
 if (ret < 0) {
  wl1251_warning("failed to set pd threshold: %d", ret);
  goto out;
 }

out:
 kfree(pd);
 return ret;
}
