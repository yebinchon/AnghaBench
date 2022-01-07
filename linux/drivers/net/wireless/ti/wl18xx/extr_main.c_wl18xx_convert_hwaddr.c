
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;



__attribute__((used)) static u32 wl18xx_convert_hwaddr(struct wl1271 *wl, u32 hwaddr)
{
 return hwaddr & ~0x80000000;
}
