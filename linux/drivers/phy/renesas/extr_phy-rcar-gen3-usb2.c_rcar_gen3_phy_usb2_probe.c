
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct rcar_gen3_chan {scalar_t__ dr_mode; int is_otg_channel; int uses_otg_pins; struct device* dev; struct phy_provider* vbus; TYPE_1__* rphys; int lock; struct phy_provider* extcon; int work; struct phy_provider* base; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy_ops {int dummy; } ;
struct TYPE_2__ {struct phy_provider* phy; int int_enable_bits; struct rcar_gen3_chan* ch; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int NUM_OF_PHYS ;
 int PTR_ERR (struct phy_provider*) ;
 scalar_t__ USB_DR_MODE_UNKNOWN ;
 int dev_attr_role ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int device_create_file (struct device*,int *) ;
 struct phy_provider* devm_extcon_dev_allocate (struct device*,int ) ;
 int devm_extcon_dev_register (struct device*,struct phy_provider*) ;
 struct phy_provider* devm_ioremap_resource (struct device*,struct resource*) ;
 struct rcar_gen3_chan* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int *,struct phy_ops const*) ;
 struct phy_provider* devm_regulator_get_optional (struct device*,char*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct rcar_gen3_chan*) ;
 int mutex_init (int *) ;
 struct phy_ops* of_device_get_match_data (struct device*) ;
 int of_property_read_bool (int ,char*) ;
 int phy_set_drvdata (struct phy_provider*,TYPE_1__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_gen3_chan*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 scalar_t__ rcar_gen3_get_dr_mode (int ) ;
 int * rcar_gen3_int_enable ;
 int rcar_gen3_phy_cable ;
 int rcar_gen3_phy_usb2_irq ;
 int rcar_gen3_phy_usb2_work ;
 int rcar_gen3_phy_usb2_xlate ;

__attribute__((used)) static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rcar_gen3_chan *channel;
 struct phy_provider *provider;
 struct resource *res;
 const struct phy_ops *phy_usb2_ops;
 int irq, ret = 0, i;

 if (!dev->of_node) {
  dev_err(dev, "This driver needs device tree\n");
  return -EINVAL;
 }

 channel = devm_kzalloc(dev, sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 channel->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(channel->base))
  return PTR_ERR(channel->base);


 irq = platform_get_irq(pdev, 0);
 if (irq >= 0) {
  INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
  irq = devm_request_irq(dev, irq, rcar_gen3_phy_usb2_irq,
           IRQF_SHARED, dev_name(dev), channel);
  if (irq < 0)
   dev_err(dev, "No irq handler (%d)\n", irq);
 }

 channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
 if (channel->dr_mode != USB_DR_MODE_UNKNOWN) {
  int ret;

  channel->is_otg_channel = 1;
  channel->uses_otg_pins = !of_property_read_bool(dev->of_node,
       "renesas,no-otg-pins");
  channel->extcon = devm_extcon_dev_allocate(dev,
       rcar_gen3_phy_cable);
  if (IS_ERR(channel->extcon))
   return PTR_ERR(channel->extcon);

  ret = devm_extcon_dev_register(dev, channel->extcon);
  if (ret < 0) {
   dev_err(dev, "Failed to register extcon\n");
   return ret;
  }
 }





 pm_runtime_enable(dev);
 phy_usb2_ops = of_device_get_match_data(dev);
 if (!phy_usb2_ops)
  return -EINVAL;

 mutex_init(&channel->lock);
 for (i = 0; i < NUM_OF_PHYS; i++) {
  channel->rphys[i].phy = devm_phy_create(dev, ((void*)0),
       phy_usb2_ops);
  if (IS_ERR(channel->rphys[i].phy)) {
   dev_err(dev, "Failed to create USB2 PHY\n");
   ret = PTR_ERR(channel->rphys[i].phy);
   goto error;
  }
  channel->rphys[i].ch = channel;
  channel->rphys[i].int_enable_bits = rcar_gen3_int_enable[i];
  phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
 }

 channel->vbus = devm_regulator_get_optional(dev, "vbus");
 if (IS_ERR(channel->vbus)) {
  if (PTR_ERR(channel->vbus) == -EPROBE_DEFER) {
   ret = PTR_ERR(channel->vbus);
   goto error;
  }
  channel->vbus = ((void*)0);
 }

 platform_set_drvdata(pdev, channel);
 channel->dev = dev;

 provider = devm_of_phy_provider_register(dev, rcar_gen3_phy_usb2_xlate);
 if (IS_ERR(provider)) {
  dev_err(dev, "Failed to register PHY provider\n");
  ret = PTR_ERR(provider);
  goto error;
 } else if (channel->is_otg_channel) {
  int ret;

  ret = device_create_file(dev, &dev_attr_role);
  if (ret < 0)
   goto error;
 }

 return 0;

error:
 pm_runtime_disable(dev);

 return ret;
}
