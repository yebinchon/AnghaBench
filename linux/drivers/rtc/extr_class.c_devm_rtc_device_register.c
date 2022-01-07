
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {struct rtc_class_ops const* ops; } ;
struct rtc_class_ops {int dummy; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;


 struct rtc_device* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int __rtc_register_device (struct module*,struct rtc_device*) ;
 struct rtc_device* devm_rtc_allocate_device (struct device*) ;

struct rtc_device *devm_rtc_device_register(struct device *dev,
         const char *name,
         const struct rtc_class_ops *ops,
         struct module *owner)
{
 struct rtc_device *rtc;
 int err;

 rtc = devm_rtc_allocate_device(dev);
 if (IS_ERR(rtc))
  return rtc;

 rtc->ops = ops;

 err = __rtc_register_device(owner, rtc);
 if (err)
  return ERR_PTR(err);

 return rtc;
}
