
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int ENOSYS ;
 int RPROC_MMUFAULT ;
 int dev_err (struct device*,char*,unsigned long,int) ;
 int rproc_report_crash (struct rproc*,int ) ;

__attribute__((used)) static int rproc_iommu_fault(struct iommu_domain *domain, struct device *dev,
        unsigned long iova, int flags, void *token)
{
 struct rproc *rproc = token;

 dev_err(dev, "iommu fault: da 0x%lx flags 0x%x\n", iova, flags);

 rproc_report_crash(rproc, RPROC_MMUFAULT);





 return -ENOSYS;
}
