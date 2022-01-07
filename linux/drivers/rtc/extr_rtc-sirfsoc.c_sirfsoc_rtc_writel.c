
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sirfsoc_rtc_drv {scalar_t__ rtc_base; int regmap; } ;


 int regmap_write (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void sirfsoc_rtc_writel(struct sirfsoc_rtc_drv *rtcdrv,
          u32 offset, u32 val)
{
 regmap_write(rtcdrv->regmap, rtcdrv->rtc_base + offset, val);
}
