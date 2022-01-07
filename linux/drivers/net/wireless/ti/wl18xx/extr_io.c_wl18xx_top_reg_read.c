
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct wl1271 {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int wlcore_read32 (struct wl1271*,int,int*) ;

int wl18xx_top_reg_read(struct wl1271 *wl, int addr, u16 *out)
{
 u32 val = 0;
 int ret;

 if (WARN_ON(addr % 2))
  return -EINVAL;

 if ((addr % 4) == 0) {

  ret = wlcore_read32(wl, addr, &val);
  if (ret >= 0 && out)
   *out = val & 0xffff;
 } else {
  ret = wlcore_read32(wl, addr - 2, &val);
  if (ret >= 0 && out)
   *out = (val & 0xffff0000) >> 16;
 }

 return ret;
}
