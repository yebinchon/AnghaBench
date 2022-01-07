
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct soc_device_attribute {struct renesas_usb3_priv* data; } ;
struct resource {int dummy; } ;
struct renesas_usb3_priv {int workaround_for_vbus; } ;
struct TYPE_6__ {int ep_list; int max_speed; int name; int * ops; } ;
struct renesas_usb3 {int role_sw_by_connector; int ep0_req; TYPE_2__ gadget; int * phy; int workaround_for_vbus; int * role_sw; int host_dev; int role_work; int * extcon; int extcon_work; int lock; int * reg; } ;
struct platform_device {int dev; } ;
struct TYPE_5__ {int fwnode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int USB_SPEED_SUPER ;
 int __renesas_usb3_ep_alloc_request (int ) ;
 int __renesas_usb3_ep_free_request (int ) ;
 int dev_attr_role ;
 int dev_err (int *,char*) ;
 int dev_fwnode (int *) ;
 int dev_info (int *,char*,char*) ;
 int dev_name (int *) ;
 int device_create_file (int *,int *) ;
 scalar_t__ device_property_read_bool (int *,char*) ;
 int * devm_extcon_dev_allocate (int *,int ) ;
 int devm_extcon_dev_register (int *,int *) ;
 int * devm_ioremap_resource (int *,struct resource*) ;
 struct renesas_usb3* devm_kzalloc (int *,int,int ) ;
 int * devm_phy_optional_get (int *,char*) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct renesas_usb3*) ;
 struct renesas_usb3_priv* of_device_get_match_data (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct renesas_usb3*) ;
 int pm_runtime_enable (int *) ;
 int renesas_usb3_cable ;
 int renesas_usb3_debugfs_init (struct renesas_usb3*,int *) ;
 int renesas_usb3_dma_alloc_prd (struct renesas_usb3*,int *) ;
 int renesas_usb3_dma_free_prd (struct renesas_usb3*,int *) ;
 int renesas_usb3_extcon_work ;
 int renesas_usb3_gadget_ops ;
 int renesas_usb3_init_ep (struct renesas_usb3*,int *,struct renesas_usb3_priv const*) ;
 int renesas_usb3_init_ram (struct renesas_usb3*,int *,struct renesas_usb3_priv const*) ;
 int renesas_usb3_irq ;
 int renesas_usb3_quirks_match ;
 TYPE_1__ renesas_usb3_role_switch_desc ;
 int renesas_usb3_role_work ;
 struct soc_device_attribute* soc_device_match (int ) ;
 int spin_lock_init (int *) ;
 int udc_name ;
 int usb_add_gadget_udc (int *,TYPE_2__*) ;
 int usb_del_gadget_udc (TYPE_2__*) ;
 int usb_of_get_companion_dev (int *) ;
 int * usb_role_switch_register (int *,TYPE_1__*) ;
 int usb_role_switch_unregister (int *) ;

__attribute__((used)) static int renesas_usb3_probe(struct platform_device *pdev)
{
 struct renesas_usb3 *usb3;
 struct resource *res;
 int irq, ret;
 const struct renesas_usb3_priv *priv;
 const struct soc_device_attribute *attr;

 attr = soc_device_match(renesas_usb3_quirks_match);
 if (attr)
  priv = attr->data;
 else
  priv = of_device_get_match_data(&pdev->dev);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 usb3 = devm_kzalloc(&pdev->dev, sizeof(*usb3), GFP_KERNEL);
 if (!usb3)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 usb3->reg = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(usb3->reg))
  return PTR_ERR(usb3->reg);

 platform_set_drvdata(pdev, usb3);
 spin_lock_init(&usb3->lock);

 usb3->gadget.ops = &renesas_usb3_gadget_ops;
 usb3->gadget.name = udc_name;
 usb3->gadget.max_speed = USB_SPEED_SUPER;
 INIT_LIST_HEAD(&usb3->gadget.ep_list);
 ret = renesas_usb3_init_ep(usb3, &pdev->dev, priv);
 if (ret < 0)
  return ret;
 renesas_usb3_init_ram(usb3, &pdev->dev, priv);

 ret = devm_request_irq(&pdev->dev, irq, renesas_usb3_irq, 0,
          dev_name(&pdev->dev), usb3);
 if (ret < 0)
  return ret;

 INIT_WORK(&usb3->extcon_work, renesas_usb3_extcon_work);
 usb3->extcon = devm_extcon_dev_allocate(&pdev->dev, renesas_usb3_cable);
 if (IS_ERR(usb3->extcon))
  return PTR_ERR(usb3->extcon);

 ret = devm_extcon_dev_register(&pdev->dev, usb3->extcon);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register extcon\n");
  return ret;
 }


 usb3->ep0_req = __renesas_usb3_ep_alloc_request(GFP_KERNEL);
 if (!usb3->ep0_req)
  return -ENOMEM;

 ret = renesas_usb3_dma_alloc_prd(usb3, &pdev->dev);
 if (ret < 0)
  goto err_alloc_prd;





 usb3->phy = devm_phy_optional_get(&pdev->dev, "usb");
 if (IS_ERR(usb3->phy)) {
  ret = PTR_ERR(usb3->phy);
  goto err_add_udc;
 }

 pm_runtime_enable(&pdev->dev);
 ret = usb_add_gadget_udc(&pdev->dev, &usb3->gadget);
 if (ret < 0)
  goto err_add_udc;

 ret = device_create_file(&pdev->dev, &dev_attr_role);
 if (ret < 0)
  goto err_dev_create;

 if (device_property_read_bool(&pdev->dev, "usb-role-switch")) {
  usb3->role_sw_by_connector = 1;
  renesas_usb3_role_switch_desc.fwnode = dev_fwnode(&pdev->dev);
 }

 INIT_WORK(&usb3->role_work, renesas_usb3_role_work);
 usb3->role_sw = usb_role_switch_register(&pdev->dev,
     &renesas_usb3_role_switch_desc);
 if (!IS_ERR(usb3->role_sw)) {
  usb3->host_dev = usb_of_get_companion_dev(&pdev->dev);
  if (!usb3->host_dev) {

   usb_role_switch_unregister(usb3->role_sw);
   usb3->role_sw = ((void*)0);
  }
 } else {
  usb3->role_sw = ((void*)0);
 }

 usb3->workaround_for_vbus = priv->workaround_for_vbus;

 renesas_usb3_debugfs_init(usb3, &pdev->dev);

 dev_info(&pdev->dev, "probed%s\n", usb3->phy ? " with phy" : "");

 return 0;

err_dev_create:
 usb_del_gadget_udc(&usb3->gadget);

err_add_udc:
 renesas_usb3_dma_free_prd(usb3, &pdev->dev);

err_alloc_prd:
 __renesas_usb3_ep_free_request(usb3->ep0_req);

 return ret;
}
