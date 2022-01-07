
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int kobj; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int mode; int ioc; int ipp; void* xhci_ec_regs; void* ctrl_regs; int family_name; int product_id; int family_id; } ;
struct brcm_usb_phy_data {int has_xhci; int has_eohci; int usb_30_clk; int usb_20_clk; TYPE_1__ ini; int mutex; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int USB_CTLR_MODE_DRD ;
 int USB_CTLR_MODE_HOST ;
 int * brcm_dr_mode_to_name ;
 int brcm_usb_init_ipp (TYPE_1__*) ;
 int ** brcm_usb_phy_attrs ;
 int brcm_usb_phy_dvr_init (struct device*,struct brcm_usb_phy_data*,struct device_node*) ;
 int brcm_usb_phy_group ;
 int brcm_usb_phy_xlate ;
 int brcm_usb_set_family_map (TYPE_1__*) ;
 int brcm_usb_uninit_common (TYPE_1__*) ;
 int brcm_usb_uninit_eohci (TYPE_1__*) ;
 int brcm_usb_uninit_xhci (TYPE_1__*) ;
 int brcmstb_get_family_id () ;
 int brcmstb_get_product_id () ;
 int clk_disable (int ) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct brcm_usb_phy_data* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 int mutex_init (int *) ;
 int name_to_value (int *,int ,char const*,int *) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct brcm_usb_phy_data*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int brcm_usb_phy_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct device *dev = &pdev->dev;
 struct brcm_usb_phy_data *priv;
 struct phy_provider *phy_provider;
 struct device_node *dn = pdev->dev.of_node;
 int err;
 const char *mode;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 platform_set_drvdata(pdev, priv);

 priv->ini.family_id = brcmstb_get_family_id();
 priv->ini.product_id = brcmstb_get_product_id();
 brcm_usb_set_family_map(&priv->ini);
 dev_dbg(dev, "Best mapping table is for %s\n",
  priv->ini.family_name);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(dev, "can't get USB_CTRL base address\n");
  return -EINVAL;
 }
 priv->ini.ctrl_regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->ini.ctrl_regs)) {
  dev_err(dev, "can't map CTRL register space\n");
  return -EINVAL;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (res) {
  priv->ini.xhci_ec_regs =
   devm_ioremap_resource(dev, res);
  if (IS_ERR(priv->ini.xhci_ec_regs)) {
   dev_err(dev, "can't map XHCI EC register space\n");
   return -EINVAL;
  }
 }

 of_property_read_u32(dn, "brcm,ipp", &priv->ini.ipp);
 of_property_read_u32(dn, "brcm,ioc", &priv->ini.ioc);

 priv->ini.mode = USB_CTLR_MODE_HOST;
 err = of_property_read_string(dn, "dr_mode", &mode);
 if (err == 0) {
  name_to_value(&brcm_dr_mode_to_name[0],
         ARRAY_SIZE(brcm_dr_mode_to_name),
   mode, &priv->ini.mode);
 }
 if (of_property_read_bool(dn, "brcm,has-xhci"))
  priv->has_xhci = 1;
 if (of_property_read_bool(dn, "brcm,has-eohci"))
  priv->has_eohci = 1;

 err = brcm_usb_phy_dvr_init(dev, priv, dn);
 if (err)
  return err;

 mutex_init(&priv->mutex);


 brcm_usb_init_ipp(&priv->ini);





 if (priv->ini.mode != USB_CTLR_MODE_DRD)
  brcm_usb_phy_attrs[1] = ((void*)0);
 err = sysfs_create_group(&dev->kobj, &brcm_usb_phy_group);
 if (err)
  dev_warn(dev, "Error creating sysfs attributes\n");


 if (priv->has_xhci)
  brcm_usb_uninit_xhci(&priv->ini);
 if (priv->has_eohci)
  brcm_usb_uninit_eohci(&priv->ini);
 brcm_usb_uninit_common(&priv->ini);
 clk_disable(priv->usb_20_clk);
 clk_disable(priv->usb_30_clk);

 phy_provider = devm_of_phy_provider_register(dev, brcm_usb_phy_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
