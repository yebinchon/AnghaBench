
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int coherent_dma_mask; int * dma_mask; struct device* parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct musb_hdrc_platform_data {int power; int mode; int * platform_ops; struct musb_hdrc_config* config; } ;
struct musb_hdrc_config {int num_eps; int ram_bits; int host_port_deassert_reset_at_resume; int multipoint; int maximum_speed; } ;
struct dsps_glue {struct platform_device* musb; } ;
struct device_node {int dummy; } ;
typedef int resources ;
typedef int pdata ;


 int ARRAY_SIZE (struct resource*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;

 int USB_SPEED_HIGH ;


 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int device_set_of_node_from_dev (struct device*,struct device*) ;
 struct musb_hdrc_config* devm_kzalloc (struct device*,int,int ) ;
 int dsps_ops ;
 int get_int_prop (struct device_node*,char*) ;
 int memset (struct resource*,int ,int) ;
 int musb_dmamask ;
 int musb_get_mode (struct device*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,struct musb_hdrc_platform_data*,int) ;
 int platform_device_add_resources (struct platform_device*,struct resource*,int ) ;
 struct platform_device* platform_device_alloc (char*,int) ;
 int platform_device_put (struct platform_device*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int usb_get_maximum_speed (struct device*) ;

__attribute__((used)) static int dsps_create_musb_pdev(struct dsps_glue *glue,
  struct platform_device *parent)
{
 struct musb_hdrc_platform_data pdata;
 struct resource resources[2];
 struct resource *res;
 struct device *dev = &parent->dev;
 struct musb_hdrc_config *config;
 struct platform_device *musb;
 struct device_node *dn = parent->dev.of_node;
 int ret, val;

 memset(resources, 0, sizeof(resources));
 res = platform_get_resource_byname(parent, IORESOURCE_MEM, "mc");
 if (!res) {
  dev_err(dev, "failed to get memory.\n");
  return -EINVAL;
 }
 resources[0] = *res;

 res = platform_get_resource_byname(parent, IORESOURCE_IRQ, "mc");
 if (!res) {
  dev_err(dev, "failed to get irq.\n");
  return -EINVAL;
 }
 resources[1] = *res;


 musb = platform_device_alloc("musb-hdrc",
   (resources[0].start & 0xFFF) == 0x400 ? 0 : 1);
 if (!musb) {
  dev_err(dev, "failed to allocate musb device\n");
  return -ENOMEM;
 }

 musb->dev.parent = dev;
 musb->dev.dma_mask = &musb_dmamask;
 musb->dev.coherent_dma_mask = musb_dmamask;
 device_set_of_node_from_dev(&musb->dev, &parent->dev);

 glue->musb = musb;

 ret = platform_device_add_resources(musb, resources,
   ARRAY_SIZE(resources));
 if (ret) {
  dev_err(dev, "failed to add resources\n");
  goto err;
 }

 config = devm_kzalloc(&parent->dev, sizeof(*config), GFP_KERNEL);
 if (!config) {
  ret = -ENOMEM;
  goto err;
 }
 pdata.config = config;
 pdata.platform_ops = &dsps_ops;

 config->num_eps = get_int_prop(dn, "mentor,num-eps");
 config->ram_bits = get_int_prop(dn, "mentor,ram-bits");
 config->host_port_deassert_reset_at_resume = 1;
 pdata.mode = musb_get_mode(dev);

 pdata.power = get_int_prop(dn, "mentor,power") / 2;

 ret = of_property_read_u32(dn, "mentor,multipoint", &val);
 if (!ret && val)
  config->multipoint = 1;

 config->maximum_speed = usb_get_maximum_speed(&parent->dev);
 switch (config->maximum_speed) {
 case 129:
 case 130:
  break;
 case 128:
  dev_warn(dev, "ignore incorrect maximum_speed "
    "(super-speed) setting in dts");

 default:
  config->maximum_speed = USB_SPEED_HIGH;
 }

 ret = platform_device_add_data(musb, &pdata, sizeof(pdata));
 if (ret) {
  dev_err(dev, "failed to add platform_data\n");
  goto err;
 }

 ret = platform_device_add(musb);
 if (ret) {
  dev_err(dev, "failed to register musb device\n");
  goto err;
 }
 return 0;

err:
 platform_device_put(musb);
 return ret;
}
