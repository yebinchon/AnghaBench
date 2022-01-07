
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_role_switch_desc {int allow_userspace_control; int fwnode; int get; int set; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct intel_xhci_usb_data {int enable_sw_switch; int role_sw; int base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int device_property_read_bool (struct device*,char*) ;
 int devm_ioremap_nocache (struct device*,int ,int ) ;
 struct intel_xhci_usb_data* devm_kzalloc (struct device*,int,int ) ;
 int fwnode_handle_put (int ) ;
 int intel_xhci_usb_get_role ;
 int intel_xhci_usb_node ;
 int intel_xhci_usb_set_role ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct intel_xhci_usb_data*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int resource_size (struct resource*) ;
 int software_node_fwnode (int *) ;
 int software_node_register (int *) ;
 int usb_role_switch_register (struct device*,struct usb_role_switch_desc*) ;

__attribute__((used)) static int intel_xhci_usb_probe(struct platform_device *pdev)
{
 struct usb_role_switch_desc sw_desc = { };
 struct device *dev = &pdev->dev;
 struct intel_xhci_usb_data *data;
 struct resource *res;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -EINVAL;
 data->base = devm_ioremap_nocache(dev, res->start, resource_size(res));
 if (!data->base)
  return -ENOMEM;

 platform_set_drvdata(pdev, data);

 ret = software_node_register(&intel_xhci_usb_node);
 if (ret)
  return ret;

 sw_desc.set = intel_xhci_usb_set_role,
 sw_desc.get = intel_xhci_usb_get_role,
 sw_desc.allow_userspace_control = 1,
 sw_desc.fwnode = software_node_fwnode(&intel_xhci_usb_node);

 data->enable_sw_switch = !device_property_read_bool(dev,
      "sw_switch_disable");

 data->role_sw = usb_role_switch_register(dev, &sw_desc);
 if (IS_ERR(data->role_sw)) {
  fwnode_handle_put(sw_desc.fwnode);
  return PTR_ERR(data->role_sw);
 }

 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 return 0;
}
