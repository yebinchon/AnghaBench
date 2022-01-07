
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void reboot_mode_driver ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_reboot_mode_match(struct device *dev, void *res, void *data)
{
 struct reboot_mode_driver **p = res;

 if (WARN_ON(!p || !*p))
  return 0;

 return *p == data;
}
