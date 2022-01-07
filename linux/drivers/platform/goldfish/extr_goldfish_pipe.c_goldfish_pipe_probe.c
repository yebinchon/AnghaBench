
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct goldfish_pipe_dev {scalar_t__ version; scalar_t__ base; int irq; int lock; int * magic; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PIPE_CURRENT_DEVICE_VERSION ;
 int PIPE_DRIVER_VERSION ;
 scalar_t__ PIPE_REG_VERSION ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int *,char*) ;
 scalar_t__ devm_ioremap (int *,int ,scalar_t__) ;
 struct goldfish_pipe_dev* devm_kzalloc (int *,int,int ) ;
 int goldfish_pipe_device_deinit ;
 int goldfish_pipe_device_init (struct platform_device*,struct goldfish_pipe_dev*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 scalar_t__ readl (scalar_t__) ;
 scalar_t__ resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int goldfish_pipe_probe(struct platform_device *pdev)
{
 struct resource *r;
 struct goldfish_pipe_dev *dev;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dev->magic = &goldfish_pipe_device_deinit;
 spin_lock_init(&dev->lock);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r || resource_size(r) < PAGE_SIZE) {
  dev_err(&pdev->dev, "can't allocate i/o page\n");
  return -EINVAL;
 }
 dev->base = devm_ioremap(&pdev->dev, r->start, PAGE_SIZE);
 if (!dev->base) {
  dev_err(&pdev->dev, "ioremap failed\n");
  return -EINVAL;
 }

 r = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!r)
  return -EINVAL;

 dev->irq = r->start;
 writel(PIPE_DRIVER_VERSION, dev->base + PIPE_REG_VERSION);
 dev->version = readl(dev->base + PIPE_REG_VERSION);
 if (WARN_ON(dev->version < PIPE_CURRENT_DEVICE_VERSION))
  return -EINVAL;

 return goldfish_pipe_device_init(pdev, dev);
}
