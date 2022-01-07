
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_resource {int dummy; } ;
struct platform_device {scalar_t__ id; int dev; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_err (struct device*,char*,int) ;
 struct irq_domain* dev_get_msi_domain (struct device*) ;
 int msi_domain_alloc_irqs (struct irq_domain*,struct device*,int) ;
 int ti_sci_inta_msi_alloc_descs (struct device*,struct ti_sci_resource*) ;
 int ti_sci_inta_msi_free_descs (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

int ti_sci_inta_msi_domain_alloc_irqs(struct device *dev,
          struct ti_sci_resource *res)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct irq_domain *msi_domain;
 int ret, nvec;

 msi_domain = dev_get_msi_domain(dev);
 if (!msi_domain)
  return -EINVAL;

 if (pdev->id < 0)
  return -ENODEV;

 nvec = ti_sci_inta_msi_alloc_descs(dev, res);
 if (nvec <= 0)
  return nvec;

 ret = msi_domain_alloc_irqs(msi_domain, dev, nvec);
 if (ret) {
  dev_err(dev, "Failed to allocate IRQs %d\n", ret);
  goto cleanup;
 }

 return 0;

cleanup:
 ti_sci_inta_msi_free_descs(&pdev->dev);
 return ret;
}
