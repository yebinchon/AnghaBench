
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct rproc {struct iommu_domain* domain; int has_iommu; TYPE_1__ dev; } ;
struct iommu_domain {int dummy; } ;
struct device {int bus; } ;


 int ENOMEM ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int iommu_attach_device (struct iommu_domain*,struct device*) ;
 struct iommu_domain* iommu_domain_alloc (int ) ;
 int iommu_domain_free (struct iommu_domain*) ;
 int iommu_set_fault_handler (struct iommu_domain*,int ,struct rproc*) ;
 int rproc_iommu_fault ;

__attribute__((used)) static int rproc_enable_iommu(struct rproc *rproc)
{
 struct iommu_domain *domain;
 struct device *dev = rproc->dev.parent;
 int ret;

 if (!rproc->has_iommu) {
  dev_dbg(dev, "iommu not present\n");
  return 0;
 }

 domain = iommu_domain_alloc(dev->bus);
 if (!domain) {
  dev_err(dev, "can't alloc iommu domain\n");
  return -ENOMEM;
 }

 iommu_set_fault_handler(domain, rproc_iommu_fault, rproc);

 ret = iommu_attach_device(domain, dev);
 if (ret) {
  dev_err(dev, "can't attach iommu device: %d\n", ret);
  goto free_domain;
 }

 rproc->domain = domain;

 return 0;

free_domain:
 iommu_domain_free(domain);
 return ret;
}
