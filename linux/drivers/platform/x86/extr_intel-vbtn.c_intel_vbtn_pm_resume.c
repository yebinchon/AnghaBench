
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int intel_vbtn_pm_complete (struct device*) ;

__attribute__((used)) static int intel_vbtn_pm_resume(struct device *dev)
{
 intel_vbtn_pm_complete(dev);
 return 0;
}
