
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_thermal_device {TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* resume ) (struct pch_thermal_device*) ;} ;


 struct pch_thermal_device* dev_get_drvdata (struct device*) ;
 int stub1 (struct pch_thermal_device*) ;

__attribute__((used)) static int intel_pch_thermal_resume(struct device *device)
{
 struct pch_thermal_device *ptd = dev_get_drvdata(device);

 return ptd->ops->resume(ptd);
}
