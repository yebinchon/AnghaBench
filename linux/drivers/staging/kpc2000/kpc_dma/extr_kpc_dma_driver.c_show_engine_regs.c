
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct kpc_dma_device {int desc_completed; int desc_next; int desc_pool_last; int desc_pool_first; scalar_t__ eng_regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct kpc_dma_device* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;
 int scnprintf (char*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct kpc_dma_device *ldev;
 struct platform_device *pldev = to_platform_device(dev);

 if (!pldev)
  return 0;
 ldev = platform_get_drvdata(pldev);
 if (!ldev)
  return 0;

 return scnprintf(buf, PAGE_SIZE,
  "EngineControlStatus      = 0x%08x\n"
  "RegNextDescPtr           = 0x%08x\n"
  "RegSWDescPtr             = 0x%08x\n"
  "RegCompletedDescPtr      = 0x%08x\n"
  "desc_pool_first          = %p\n"
  "desc_pool_last           = %p\n"
  "desc_next                = %p\n"
  "desc_completed           = %p\n",
  readl(ldev->eng_regs + 1),
  readl(ldev->eng_regs + 2),
  readl(ldev->eng_regs + 3),
  readl(ldev->eng_regs + 4),
  ldev->desc_pool_first,
  ldev->desc_pool_last,
  ldev->desc_next,
  ldev->desc_completed
 );
}
