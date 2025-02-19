
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct rtc_class_ops {int dummy; } ;
struct resource {int flags; int start; } ;
struct TYPE_14__ {struct m48t59_plat_data* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct nvmem_config {char* name; int word_size; int stride; int size; struct platform_device* priv; int reg_write; int reg_read; } ;
struct m48t59_private {scalar_t__ irq; TYPE_1__* rtc; int lock; scalar_t__ ioaddr; } ;
struct m48t59_plat_data {int type; int offset; scalar_t__ ioaddr; scalar_t__ read_byte; scalar_t__ write_byte; } ;
struct TYPE_13__ {int nvram_old_abi; struct rtc_class_ops const* ops; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (TYPE_1__*) ;



 scalar_t__ NO_IRQ ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (TYPE_4__*,char*) ;
 struct m48t59_plat_data* dev_get_platdata (TYPE_4__*) ;
 scalar_t__ devm_ioremap (TYPE_4__*,int ,int ) ;
 void* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,scalar_t__,int ,int ,char*,TYPE_4__*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_4__*) ;
 struct rtc_class_ops m48t02_rtc_ops ;
 scalar_t__ m48t59_mem_readb ;
 scalar_t__ m48t59_mem_writeb ;
 int m48t59_nvram_read ;
 int m48t59_nvram_write ;
 int m48t59_rtc_interrupt ;
 struct rtc_class_ops m48t59_rtc_ops ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct m48t59_private*) ;
 int resource_size (struct resource*) ;
 int rtc_nvmem_register (TYPE_1__*,struct nvmem_config*) ;
 int rtc_register_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int m48t59_rtc_probe(struct platform_device *pdev)
{
 struct m48t59_plat_data *pdata = dev_get_platdata(&pdev->dev);
 struct m48t59_private *m48t59 = ((void*)0);
 struct resource *res;
 int ret = -ENOMEM;
 const struct rtc_class_ops *ops;
 struct nvmem_config nvmem_cfg = {
  .name = "m48t59-",
  .word_size = 1,
  .stride = 1,
  .reg_read = m48t59_nvram_read,
  .reg_write = m48t59_nvram_write,
  .priv = pdev,
 };


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  res = platform_get_resource(pdev, IORESOURCE_IO, 0);
  if (!res)
   return -EINVAL;
 }

 if (res->flags & IORESOURCE_IO) {



  if (!pdata || !pdata->write_byte || !pdata->read_byte)
   return -EINVAL;
 } else if (res->flags & IORESOURCE_MEM) {

  if (!pdata) {
   pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata),
      GFP_KERNEL);
   if (!pdata)
    return -ENOMEM;

   pdev->dev.platform_data = pdata;
  }
  if (!pdata->type)
   pdata->type = 128;


  if (!pdata->write_byte)
   pdata->write_byte = m48t59_mem_writeb;
  if (!pdata->read_byte)
   pdata->read_byte = m48t59_mem_readb;
 }

 m48t59 = devm_kzalloc(&pdev->dev, sizeof(*m48t59), GFP_KERNEL);
 if (!m48t59)
  return -ENOMEM;

 m48t59->ioaddr = pdata->ioaddr;

 if (!m48t59->ioaddr) {

  m48t59->ioaddr = devm_ioremap(&pdev->dev, res->start,
      resource_size(res));
  if (!m48t59->ioaddr)
   return ret;
 }




 m48t59->irq = platform_get_irq(pdev, 0);
 if (m48t59->irq <= 0)
  m48t59->irq = NO_IRQ;

 if (m48t59->irq != NO_IRQ) {
  ret = devm_request_irq(&pdev->dev, m48t59->irq,
    m48t59_rtc_interrupt, IRQF_SHARED,
    "rtc-m48t59", &pdev->dev);
  if (ret)
   return ret;
 }
 switch (pdata->type) {
 case 128:
  ops = &m48t59_rtc_ops;
  pdata->offset = 0x1ff0;
  break;
 case 130:
  ops = &m48t02_rtc_ops;
  pdata->offset = 0x7f0;
  break;
 case 129:
  ops = &m48t02_rtc_ops;
  pdata->offset = 0x1ff0;
  break;
 default:
  dev_err(&pdev->dev, "Unknown RTC type\n");
  return -ENODEV;
 }

 spin_lock_init(&m48t59->lock);
 platform_set_drvdata(pdev, m48t59);

 m48t59->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(m48t59->rtc))
  return PTR_ERR(m48t59->rtc);

 m48t59->rtc->nvram_old_abi = 1;
 m48t59->rtc->ops = ops;

 nvmem_cfg.size = pdata->offset;
 ret = rtc_nvmem_register(m48t59->rtc, &nvmem_cfg);
 if (ret)
  return ret;

 ret = rtc_register_device(m48t59->rtc);
 if (ret)
  return ret;

 return 0;
}
