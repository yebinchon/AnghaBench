
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_17__ {int dev; int name; int * ep0; int speed; int max_speed; int * ops; } ;
struct xusb_udc {scalar_t__ (* read_fn ) (scalar_t__) ;scalar_t__ dma_enabled; scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int) ;TYPE_5__ gadget; int * dev; int lock; TYPE_3__* ep; TYPE_2__* req; } ;
struct xusb_req {int dummy; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_16__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_15__ {int ep_usb; } ;
struct TYPE_13__ {int * buf; } ;
struct TYPE_14__ {TYPE_1__ usb_req; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int STATUSBUFF_SIZE ;
 scalar_t__ TEST_J ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_UNKNOWN ;
 scalar_t__ XUSB_ADDRESS_OFFSET ;
 size_t XUSB_EP_NUMBER_ZERO ;
 scalar_t__ XUSB_IER_OFFSET ;
 int XUSB_STATUS_FIFO_BUFF_FREE_MASK ;
 int XUSB_STATUS_FIFO_BUFF_RDY_MASK ;
 int XUSB_STATUS_GLOBAL_INTR_MASK ;
 int XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK ;
 int XUSB_STATUS_INTR_EVENT_MASK ;
 int XUSB_STATUS_SETUP_PACKET_MASK ;
 scalar_t__ XUSB_TESTMODE_OFFSET ;
 int dev_dbg (TYPE_4__*,char*,int) ;
 int dev_err (TYPE_4__*,char*,int) ;
 int dev_name (TYPE_4__*) ;
 int dev_vdbg (TYPE_4__*,char*,int ,int,scalar_t__,char*) ;
 scalar_t__ devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 void* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,int ,struct xusb_udc*) ;
 int driver_name ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xusb_udc*) ;
 int spin_lock_init (int *) ;
 int stub1 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ stub2 (scalar_t__) ;
 int stub3 (scalar_t__,scalar_t__,scalar_t__) ;
 int stub4 (scalar_t__,scalar_t__,scalar_t__) ;
 int stub5 (scalar_t__,scalar_t__,int) ;
 int usb_add_gadget_udc (TYPE_4__*,TYPE_5__*) ;
 int xudc_eps_init (struct xusb_udc*) ;
 int xudc_irq ;
 scalar_t__ xudc_read32 (scalar_t__) ;
 scalar_t__ xudc_read32_be (scalar_t__) ;
 int xudc_write32 (scalar_t__,scalar_t__,scalar_t__) ;
 int xudc_write32_be (scalar_t__,scalar_t__,scalar_t__) ;
 int xusb_udc_ops ;

__attribute__((used)) static int xudc_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct resource *res;
 struct xusb_udc *udc;
 int irq;
 int ret;
 u32 ier;
 u8 *buff;

 udc = devm_kzalloc(&pdev->dev, sizeof(*udc), GFP_KERNEL);
 if (!udc)
  return -ENOMEM;


 udc->req = devm_kzalloc(&pdev->dev, sizeof(struct xusb_req),
    GFP_KERNEL);
 if (!udc->req)
  return -ENOMEM;

 buff = devm_kzalloc(&pdev->dev, STATUSBUFF_SIZE, GFP_KERNEL);
 if (!buff)
  return -ENOMEM;

 udc->req->usb_req.buf = buff;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 udc->addr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(udc->addr))
  return PTR_ERR(udc->addr);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;
 ret = devm_request_irq(&pdev->dev, irq, xudc_irq, 0,
          dev_name(&pdev->dev), udc);
 if (ret < 0) {
  dev_dbg(&pdev->dev, "unable to request irq %d", irq);
  goto fail;
 }

 udc->dma_enabled = of_property_read_bool(np, "xlnx,has-builtin-dma");


 udc->gadget.ops = &xusb_udc_ops;
 udc->gadget.max_speed = USB_SPEED_HIGH;
 udc->gadget.speed = USB_SPEED_UNKNOWN;
 udc->gadget.ep0 = &udc->ep[XUSB_EP_NUMBER_ZERO].ep_usb;
 udc->gadget.name = driver_name;

 spin_lock_init(&udc->lock);


 udc->write_fn = xudc_write32_be;
 udc->read_fn = xudc_read32_be;
 udc->write_fn(udc->addr, XUSB_TESTMODE_OFFSET, TEST_J);
 if ((udc->read_fn(udc->addr + XUSB_TESTMODE_OFFSET))
   != TEST_J) {
  udc->write_fn = xudc_write32;
  udc->read_fn = xudc_read32;
 }
 udc->write_fn(udc->addr, XUSB_TESTMODE_OFFSET, 0);

 xudc_eps_init(udc);


 udc->write_fn(udc->addr, XUSB_ADDRESS_OFFSET, 0);

 ret = usb_add_gadget_udc(&pdev->dev, &udc->gadget);
 if (ret)
  goto fail;

 udc->dev = &udc->gadget.dev;


 ier = XUSB_STATUS_GLOBAL_INTR_MASK | XUSB_STATUS_INTR_EVENT_MASK |
       XUSB_STATUS_FIFO_BUFF_RDY_MASK | XUSB_STATUS_FIFO_BUFF_FREE_MASK |
       XUSB_STATUS_SETUP_PACKET_MASK |
       XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK;

 udc->write_fn(udc->addr, XUSB_IER_OFFSET, ier);

 platform_set_drvdata(pdev, udc);

 dev_vdbg(&pdev->dev, "%s at 0x%08X mapped to %p %s\n",
   driver_name, (u32)res->start, udc->addr,
   udc->dma_enabled ? "with DMA" : "without DMA");

 return 0;
fail:
 dev_err(&pdev->dev, "probe failed, %d\n", ret);
 return ret;
}
