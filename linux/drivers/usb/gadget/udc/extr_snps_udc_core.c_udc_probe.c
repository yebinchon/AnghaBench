
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int tmp ;
struct TYPE_4__ {int max_speed; int name; int dev; int * ops; } ;
struct udc {int irq; scalar_t__ chiprev; TYPE_1__* regs; TYPE_2__ gadget; int dev; int phys_addr; } ;
struct TYPE_3__ {int ctl; } ;


 int AMD_BIT (int ) ;
 int ENODEV ;
 int UDC_DEVCTL_SD ;
 int UDC_DRIVER_VERSION_STRING ;
 scalar_t__ UDC_HSA0_REV ;
 scalar_t__ UDC_HSB1_REV ;
 int USB_SPEED_HIGH ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,char*,...) ;
 int dev_set_name (int *,char*) ;
 int gadget_release ;
 char* mod_desc ;
 int name ;
 int print_regs (struct udc*) ;
 int readl (int *) ;
 int snprintf (char*,int,char*,int) ;
 int startup_registers (struct udc*) ;
 int strcpy (char*,int ) ;
 int timer_setup (int *,int ,int ) ;
 struct udc* udc ;
 int udc_ops ;
 int udc_pollstall_timer ;
 int udc_pollstall_timer_function ;
 int udc_timer ;
 int udc_timer_function ;
 int usb_add_gadget_udc_release (int ,TYPE_2__*,int ) ;
 int writel (int ,int *) ;

int udc_probe(struct udc *dev)
{
 char tmp[128];
 u32 reg;
 int retval;


 dev->gadget.ops = &udc_ops;

 dev_set_name(&dev->gadget.dev, "gadget");
 dev->gadget.name = name;
 dev->gadget.max_speed = USB_SPEED_HIGH;


 startup_registers(dev);

 dev_info(dev->dev, "%s\n", mod_desc);

 snprintf(tmp, sizeof(tmp), "%d", dev->irq);


 if (dev->chiprev == UDC_HSA0_REV ||
     dev->chiprev == UDC_HSB1_REV) {
  dev_info(dev->dev, "irq %s, pci mem %08lx, chip rev %02x(Geode5536 %s)\n",
    tmp, dev->phys_addr, dev->chiprev,
    (dev->chiprev == UDC_HSA0_REV) ?
    "A0" : "B1");
  strcpy(tmp, UDC_DRIVER_VERSION_STRING);
  if (dev->chiprev == UDC_HSA0_REV) {
   dev_err(dev->dev, "chip revision is A0; too old\n");
   retval = -ENODEV;
   goto finished;
  }
  dev_info(dev->dev,
    "driver version: %s(for Geode5536 B1)\n", tmp);
 }

 udc = dev;

 retval = usb_add_gadget_udc_release(udc->dev, &dev->gadget,
         gadget_release);
 if (retval)
  goto finished;


 timer_setup(&udc_timer, udc_timer_function, 0);
 timer_setup(&udc_pollstall_timer, udc_pollstall_timer_function, 0);


 reg = readl(&dev->regs->ctl);
 reg |= AMD_BIT(UDC_DEVCTL_SD);
 writel(reg, &dev->regs->ctl);


 print_regs(dev);

 return 0;

finished:
 return retval;
}
