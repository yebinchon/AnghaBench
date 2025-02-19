
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_phy_data {int dummy; } ;
struct usb_otg {TYPE_1__* usb_phy; int set_peripheral; int set_host; } ;
struct resource {int start; } ;
struct TYPE_9__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy_provider {int dummy; } ;
typedef struct phy_provider phy ;
struct of_device_id {struct usb_phy_data* data; } ;
struct TYPE_8__ {char* label; int type; struct usb_otg* otg; TYPE_2__* dev; } ;
struct dm816x_usb_phy {int usb_ctrl; int usbphy_ctrl; int instance; TYPE_1__ phy; TYPE_2__* dev; struct phy_provider* refclk; struct phy_provider* syscon; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 int USB_PHY_TYPE_USB2 ;
 int clk_prepare (struct phy_provider*) ;
 struct phy_provider* devm_clk_get (TYPE_2__*,char*) ;
 void* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (TYPE_2__*,int ) ;
 struct phy_provider* devm_phy_create (TYPE_2__*,int *,int *) ;
 int dm816x_usb_phy_id_table ;
 int dm816x_usb_phy_set_host ;
 int dm816x_usb_phy_set_peripheral ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_match_ptr (int ) ;
 int of_phy_simple_xlate ;
 int ops ;
 int phy_set_drvdata (struct phy_provider*,struct dm816x_usb_phy*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dm816x_usb_phy*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 struct phy_provider* syscon_regmap_lookup_by_phandle (int ,char*) ;
 int usb_add_phy_dev (TYPE_1__*) ;

__attribute__((used)) static int dm816x_usb_phy_probe(struct platform_device *pdev)
{
 struct dm816x_usb_phy *phy;
 struct resource *res;
 struct phy *generic_phy;
 struct phy_provider *phy_provider;
 struct usb_otg *otg;
 const struct of_device_id *of_id;
 const struct usb_phy_data *phy_data;
 int error;

 of_id = of_match_device(of_match_ptr(dm816x_usb_phy_id_table),
    &pdev->dev);
 if (!of_id)
  return -EINVAL;

 phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENOENT;

 phy->syscon = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
            "syscon");
 if (IS_ERR(phy->syscon))
  return PTR_ERR(phy->syscon);






 phy->usb_ctrl = 0x20;
 phy->usbphy_ctrl = (res->start & 0xff) + 4;
 if (phy->usbphy_ctrl == 0x2c)
  phy->instance = 1;

 phy_data = of_id->data;

 otg = devm_kzalloc(&pdev->dev, sizeof(*otg), GFP_KERNEL);
 if (!otg)
  return -ENOMEM;

 phy->dev = &pdev->dev;
 phy->phy.dev = phy->dev;
 phy->phy.label = "dm8168_usb_phy";
 phy->phy.otg = otg;
 phy->phy.type = USB_PHY_TYPE_USB2;
 otg->set_host = dm816x_usb_phy_set_host;
 otg->set_peripheral = dm816x_usb_phy_set_peripheral;
 otg->usb_phy = &phy->phy;

 platform_set_drvdata(pdev, phy);

 phy->refclk = devm_clk_get(phy->dev, "refclk");
 if (IS_ERR(phy->refclk))
  return PTR_ERR(phy->refclk);
 error = clk_prepare(phy->refclk);
 if (error)
  return error;

 pm_runtime_enable(phy->dev);
 generic_phy = devm_phy_create(phy->dev, ((void*)0), &ops);
 if (IS_ERR(generic_phy))
  return PTR_ERR(generic_phy);

 phy_set_drvdata(generic_phy, phy);

 phy_provider = devm_of_phy_provider_register(phy->dev,
           of_phy_simple_xlate);
 if (IS_ERR(phy_provider))
  return PTR_ERR(phy_provider);

 usb_add_phy_dev(&phy->phy);

 return 0;
}
