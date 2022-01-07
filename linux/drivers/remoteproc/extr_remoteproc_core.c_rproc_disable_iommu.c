
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int iommu_detach_device (struct iommu_domain*,struct device*) ;
 int iommu_domain_free (struct iommu_domain*) ;

__attribute__((used)) static void rproc_disable_iommu(struct rproc *rproc)
{
 struct iommu_domain *domain = rproc->domain;
 struct device *dev = rproc->dev.parent;

 if (!domain)
  return;

 iommu_detach_device(domain, dev);
 iommu_domain_free(domain);
}
