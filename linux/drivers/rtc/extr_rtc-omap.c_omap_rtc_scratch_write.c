
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_rtc {TYPE_1__* type; } ;
struct TYPE_2__ {int (* lock ) (struct omap_rtc*) ;int (* unlock ) (struct omap_rtc*) ;} ;


 scalar_t__ OMAP_RTC_SCRATCH0_REG ;
 int rtc_writel (struct omap_rtc*,scalar_t__,int ) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;

__attribute__((used)) static int omap_rtc_scratch_write(void *priv, unsigned int offset, void *_val,
      size_t bytes)
{
 struct omap_rtc *rtc = priv;
 u32 *val = _val;
 int i;

 rtc->type->unlock(rtc);
 for (i = 0; i < bytes / 4; i++)
  rtc_writel(rtc,
      OMAP_RTC_SCRATCH0_REG + offset + (i * 4), val[i]);
 rtc->type->lock(rtc);

 return 0;
}
