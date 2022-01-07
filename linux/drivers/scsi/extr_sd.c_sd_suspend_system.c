
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int sd_suspend_common (struct device*,int) ;

__attribute__((used)) static int sd_suspend_system(struct device *dev)
{
 return sd_suspend_common(dev, 1);
}
