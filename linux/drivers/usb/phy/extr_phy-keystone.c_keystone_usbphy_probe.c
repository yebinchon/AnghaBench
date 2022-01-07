
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int shutdown; int init; } ;
struct TYPE_3__ {TYPE_2__ phy; } ;
struct keystone_usbphy {TYPE_1__ usb_phy_gen; int phy_ctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct keystone_usbphy* devm_kzalloc (struct device*,int,int ) ;
 int keystone_usbphy_init ;
 int keystone_usbphy_shutdown ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct keystone_usbphy*) ;
 int usb_add_phy_dev (TYPE_2__*) ;
 int usb_phy_gen_create_phy (struct device*,TYPE_1__*,int *) ;

__attribute__((used)) static int keystone_usbphy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct keystone_usbphy *k_phy;
 struct resource *res;
 int ret;

 k_phy = devm_kzalloc(dev, sizeof(*k_phy), GFP_KERNEL);
 if (!k_phy)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 k_phy->phy_ctrl = devm_ioremap_resource(dev, res);
 if (IS_ERR(k_phy->phy_ctrl))
  return PTR_ERR(k_phy->phy_ctrl);

 ret = usb_phy_gen_create_phy(dev, &k_phy->usb_phy_gen, ((void*)0));
 if (ret)
  return ret;

 k_phy->usb_phy_gen.phy.init = keystone_usbphy_init;
 k_phy->usb_phy_gen.phy.shutdown = keystone_usbphy_shutdown;

 platform_set_drvdata(pdev, k_phy);

 return usb_add_phy_dev(&k_phy->usb_phy_gen.phy);
}
