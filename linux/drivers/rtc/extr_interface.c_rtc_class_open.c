
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int owner; } ;
struct device {int dummy; } ;


 struct device* class_find_device_by_name (int ,char const*) ;
 int put_device (struct device*) ;
 int rtc_class ;
 struct rtc_device* to_rtc_device (struct device*) ;
 int try_module_get (int ) ;

struct rtc_device *rtc_class_open(const char *name)
{
 struct device *dev;
 struct rtc_device *rtc = ((void*)0);

 dev = class_find_device_by_name(rtc_class, name);
 if (dev)
  rtc = to_rtc_device(dev);

 if (rtc) {
  if (!try_module_get(rtc->owner)) {
   put_device(dev);
   rtc = ((void*)0);
  }
 }

 return rtc;
}
