
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {scalar_t__ nvram; } ;


 int rtc_nvram_unregister (struct rtc_device*) ;

void rtc_nvmem_unregister(struct rtc_device *rtc)
{

 if (rtc->nvram)
  rtc_nvram_unregister(rtc);
}
