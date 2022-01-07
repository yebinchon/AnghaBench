
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sirfsoc_rtc_drv {scalar_t__ rtc_base; int regmap; } ;


 int regmap_read (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static u32 sirfsoc_rtc_readl(struct sirfsoc_rtc_drv *rtcdrv, u32 offset)
{
 u32 val;

 regmap_read(rtcdrv->regmap, rtcdrv->rtc_base + offset, &val);
 return val;
}
