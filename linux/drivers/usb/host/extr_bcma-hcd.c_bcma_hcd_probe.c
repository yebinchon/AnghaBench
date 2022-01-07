
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bcma_hcd_device {int gpio_desc; struct bcma_device* core; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct bcma_device {TYPE_1__ id; TYPE_2__ dev; } ;





 int CONFIG_ARM ;
 int CONFIG_MIPS ;
 int ENODEV ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int IS_ENABLED (int ) ;
 int bcma_hcd_usb20_init (struct bcma_hcd_device*) ;
 int bcma_hcd_usb20_ns_init (struct bcma_hcd_device*) ;
 int bcma_hcd_usb20_old_arm_init (struct bcma_hcd_device*) ;
 int bcma_hcd_usb30_init (struct bcma_hcd_device*) ;
 int bcma_set_drvdata (struct bcma_device*,struct bcma_hcd_device*) ;
 int devm_gpiod_get (TYPE_2__*,char*,int ) ;
 struct bcma_hcd_device* devm_kzalloc (TYPE_2__*,int,int ) ;

__attribute__((used)) static int bcma_hcd_probe(struct bcma_device *core)
{
 int err;
 struct bcma_hcd_device *usb_dev;



 usb_dev = devm_kzalloc(&core->dev, sizeof(struct bcma_hcd_device),
          GFP_KERNEL);
 if (!usb_dev)
  return -ENOMEM;
 usb_dev->core = core;

 if (core->dev.of_node)
  usb_dev->gpio_desc = devm_gpiod_get(&core->dev, "vcc",
          GPIOD_OUT_HIGH);

 switch (core->id.id) {
 case 128:
  if (IS_ENABLED(CONFIG_ARM))
   err = bcma_hcd_usb20_old_arm_init(usb_dev);
  else if (IS_ENABLED(CONFIG_MIPS))
   err = bcma_hcd_usb20_init(usb_dev);
  else
   err = -ENOTSUPP;
  break;
 case 130:
  err = bcma_hcd_usb20_ns_init(usb_dev);
  break;
 case 129:
  err = bcma_hcd_usb30_init(usb_dev);
  break;
 default:
  return -ENODEV;
 }
 if (err)
  return err;

 bcma_set_drvdata(core, usb_dev);
 return 0;
}
