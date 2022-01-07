
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct altera_msi {int irq; int num_of_vectors; int vector_phy; void* vector_base; void* csr_base; struct platform_device* pdev; int lock; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int altera_allocate_domains (struct altera_msi*) ;
 int altera_msi_isr ;
 int altera_msi_remove (struct platform_device*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 void* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct altera_msi* devm_kzalloc (TYPE_1__*,int,int ) ;
 int irq_set_chained_handler_and_data (int,int ,struct altera_msi*) ;
 int mutex_init (int *) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct altera_msi*) ;

__attribute__((used)) static int altera_msi_probe(struct platform_device *pdev)
{
 struct altera_msi *msi;
 struct device_node *np = pdev->dev.of_node;
 struct resource *res;
 int ret;

 msi = devm_kzalloc(&pdev->dev, sizeof(struct altera_msi),
      GFP_KERNEL);
 if (!msi)
  return -ENOMEM;

 mutex_init(&msi->lock);
 msi->pdev = pdev;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "csr");
 msi->csr_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(msi->csr_base)) {
  dev_err(&pdev->dev, "failed to map csr memory\n");
  return PTR_ERR(msi->csr_base);
 }

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
        "vector_slave");
 msi->vector_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(msi->vector_base)) {
  dev_err(&pdev->dev, "failed to map vector_slave memory\n");
  return PTR_ERR(msi->vector_base);
 }

 msi->vector_phy = res->start;

 if (of_property_read_u32(np, "num-vectors", &msi->num_of_vectors)) {
  dev_err(&pdev->dev, "failed to parse the number of vectors\n");
  return -EINVAL;
 }

 ret = altera_allocate_domains(msi);
 if (ret)
  return ret;

 msi->irq = platform_get_irq(pdev, 0);
 if (msi->irq < 0) {
  dev_err(&pdev->dev, "failed to map IRQ: %d\n", msi->irq);
  ret = msi->irq;
  goto err;
 }

 irq_set_chained_handler_and_data(msi->irq, altera_msi_isr, msi);
 platform_set_drvdata(pdev, msi);

 return 0;

err:
 altera_msi_remove(pdev);
 return ret;
}
