
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int WL18XX_ENABLE ;
 int WL18XX_SPARE_A2 ;
 int wlcore_write32 (struct wl1271*,int ,int) ;

__attribute__((used)) static int wl18xx_boot_soft_reset(struct wl1271 *wl)
{
 int ret;


 ret = wlcore_write32(wl, WL18XX_ENABLE, 0x0);
 if (ret < 0)
  goto out;


 ret = wlcore_write32(wl, WL18XX_SPARE_A2, 0xffff);

out:
 return ret;
}
