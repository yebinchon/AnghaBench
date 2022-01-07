
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef void backlight_device ;



__attribute__((used)) static int devm_backlight_device_match(struct device *dev, void *res,
     void *data)
{
 struct backlight_device **r = res;

 return *r == data;
}
