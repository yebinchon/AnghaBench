
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int platform_msi_domain_free_irqs (struct device*) ;

__attribute__((used)) static void smmu_pmu_free_msis(void *data)
{
 struct device *dev = data;

 platform_msi_domain_free_irqs(dev);
}
