
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ep_list; } ;
struct usba_udc {int irq; int num_ep; struct clk* usba_ep; TYPE_1__ gadget; struct platform_device* pdev; int * vbus_pin; struct clk* hclk; struct clk* pclk; int vbus_mutex; int lock; struct clk* fifo; struct clk* regs; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 int CTRL ;
 int CTRL_IOMEM_ID ;
 int ENOMEM ;
 int FIFO_IOMEM_ID ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQ_NOAUTOEN ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int USBA_DISABLE_MASK ;
 int USBA_VBUS_IRQFLAGS ;
 struct clk* atmel_udc_of_init (struct platform_device*,struct usba_udc*) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,struct resource*,struct clk*) ;
 int dev_warn (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 struct clk* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct usba_udc* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct usba_udc*) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,char*,struct usba_udc*) ;
 int gpiod_to_irq (int *) ;
 int irq_set_status_flags (int ,int ) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct usba_udc*) ;
 int spin_lock_init (int *) ;
 int toggle_bias (struct usba_udc*,int ) ;
 int usb_add_gadget_udc (int *,TYPE_1__*) ;
 int usba_ep_init_debugfs (struct usba_udc*,struct clk*) ;
 TYPE_1__ usba_gadget_template ;
 int usba_init_debugfs (struct usba_udc*) ;
 int usba_udc_irq ;
 int usba_vbus_irq_thread ;
 int usba_writel (struct usba_udc*,int ,int ) ;

__attribute__((used)) static int usba_udc_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct clk *pclk, *hclk;
 struct usba_udc *udc;
 int irq, ret, i;

 udc = devm_kzalloc(&pdev->dev, sizeof(*udc), GFP_KERNEL);
 if (!udc)
  return -ENOMEM;

 udc->gadget = usba_gadget_template;
 INIT_LIST_HEAD(&udc->gadget.ep_list);

 res = platform_get_resource(pdev, IORESOURCE_MEM, CTRL_IOMEM_ID);
 udc->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(udc->regs))
  return PTR_ERR(udc->regs);
 dev_info(&pdev->dev, "MMIO registers at %pR mapped at %p\n",
   res, udc->regs);

 res = platform_get_resource(pdev, IORESOURCE_MEM, FIFO_IOMEM_ID);
 udc->fifo = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(udc->fifo))
  return PTR_ERR(udc->fifo);
 dev_info(&pdev->dev, "FIFO at %pR mapped at %p\n", res, udc->fifo);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(pclk))
  return PTR_ERR(pclk);
 hclk = devm_clk_get(&pdev->dev, "hclk");
 if (IS_ERR(hclk))
  return PTR_ERR(hclk);

 spin_lock_init(&udc->lock);
 mutex_init(&udc->vbus_mutex);
 udc->pdev = pdev;
 udc->pclk = pclk;
 udc->hclk = hclk;

 platform_set_drvdata(pdev, udc);


 ret = clk_prepare_enable(pclk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable pclk, aborting.\n");
  return ret;
 }

 usba_writel(udc, CTRL, USBA_DISABLE_MASK);
 clk_disable_unprepare(pclk);

 udc->usba_ep = atmel_udc_of_init(pdev, udc);

 toggle_bias(udc, 0);

 if (IS_ERR(udc->usba_ep))
  return PTR_ERR(udc->usba_ep);

 ret = devm_request_irq(&pdev->dev, irq, usba_udc_irq, 0,
    "atmel_usba_udc", udc);
 if (ret) {
  dev_err(&pdev->dev, "Cannot request irq %d (error %d)\n",
   irq, ret);
  return ret;
 }
 udc->irq = irq;

 if (udc->vbus_pin) {
  irq_set_status_flags(gpiod_to_irq(udc->vbus_pin), IRQ_NOAUTOEN);
  ret = devm_request_threaded_irq(&pdev->dev,
    gpiod_to_irq(udc->vbus_pin), ((void*)0),
    usba_vbus_irq_thread, USBA_VBUS_IRQFLAGS,
    "atmel_usba_udc", udc);
  if (ret) {
   udc->vbus_pin = ((void*)0);
   dev_warn(&udc->pdev->dev,
     "failed to request vbus irq; "
     "assuming always on\n");
  }
 }

 ret = usb_add_gadget_udc(&pdev->dev, &udc->gadget);
 if (ret)
  return ret;
 device_init_wakeup(&pdev->dev, 1);

 usba_init_debugfs(udc);
 for (i = 1; i < udc->num_ep; i++)
  usba_ep_init_debugfs(udc, &udc->usba_ep[i]);

 return 0;
}
