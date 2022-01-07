
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dev; scalar_t__ registered; } ;
struct device {int dummy; } ;


 int put_device (int *) ;
 int rtc_device_unregister (struct rtc_device*) ;
 int rtc_nvmem_unregister (struct rtc_device*) ;

__attribute__((used)) static void devm_rtc_release_device(struct device *dev, void *res)
{
 struct rtc_device *rtc = *(struct rtc_device **)res;

 rtc_nvmem_unregister(rtc);

 if (rtc->registered)
  rtc_device_unregister(rtc);
 else
  put_device(&rtc->dev);
}
