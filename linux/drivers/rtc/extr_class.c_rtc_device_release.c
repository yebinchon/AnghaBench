
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int id; } ;
struct device {int dummy; } ;


 int ida_simple_remove (int *,int ) ;
 int kfree (struct rtc_device*) ;
 int rtc_ida ;
 struct rtc_device* to_rtc_device (struct device*) ;

__attribute__((used)) static void rtc_device_release(struct device *dev)
{
 struct rtc_device *rtc = to_rtc_device(dev);

 ida_simple_remove(&rtc_ida, rtc->id);
 kfree(rtc);
}
