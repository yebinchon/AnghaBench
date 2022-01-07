
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct wusbhc {int dummy; } ;



__attribute__((used)) static int wusbhc_rh_get_hub_status(struct wusbhc *wusbhc, u32 *buf,
        u16 wLength)
{

 *buf = 0;
 return 0;
}
