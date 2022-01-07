
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int set_suspend; TYPE_1__* dev; } ;
struct tegra_usb_phy {int is_ulpi_phy; int reset_gpio; scalar_t__ mode; TYPE_2__ u_phy; int vbus; int * config; int is_legacy_phy; int regs; int soc_config; } ;
struct resource {int start; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;
struct device_node {int dummy; } ;
typedef enum usb_phy_interface { ____Placeholder_usb_phy_interface } usb_phy_interface ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;


 scalar_t__ USB_DR_MODE_HOST ;
 scalar_t__ USB_DR_MODE_UNKNOWN ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_notice (TYPE_1__*,char*) ;
 int devm_ioremap (TYPE_1__*,int ,int ) ;
 struct tegra_usb_phy* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_get (TYPE_1__*,char*) ;
 int gpio_is_valid (int) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_usb_get_phy_mode (struct device_node*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_usb_phy*) ;
 int resource_size (struct resource*) ;
 int tegra_usb_phy_close (struct tegra_usb_phy*) ;
 int tegra_usb_phy_id_table ;
 int tegra_usb_phy_init (struct tegra_usb_phy*) ;
 int tegra_usb_phy_suspend ;
 int usb_add_phy_dev (TYPE_2__*) ;
 scalar_t__ usb_get_dr_mode (TYPE_1__*) ;
 int utmi_phy_probe (struct tegra_usb_phy*,struct platform_device*) ;

__attribute__((used)) static int tegra_usb_phy_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct resource *res;
 struct tegra_usb_phy *tegra_phy = ((void*)0);
 struct device_node *np = pdev->dev.of_node;
 enum usb_phy_interface phy_type;
 int err;

 tegra_phy = devm_kzalloc(&pdev->dev, sizeof(*tegra_phy), GFP_KERNEL);
 if (!tegra_phy)
  return -ENOMEM;

 match = of_match_device(tegra_usb_phy_id_table, &pdev->dev);
 if (!match) {
  dev_err(&pdev->dev, "Error: No device match found\n");
  return -ENODEV;
 }
 tegra_phy->soc_config = match->data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "Failed to get I/O memory\n");
  return -ENXIO;
 }

 tegra_phy->regs = devm_ioremap(&pdev->dev, res->start,
  resource_size(res));
 if (!tegra_phy->regs) {
  dev_err(&pdev->dev, "Failed to remap I/O memory\n");
  return -ENOMEM;
 }

 tegra_phy->is_legacy_phy =
  of_property_read_bool(np, "nvidia,has-legacy-mode");

 phy_type = of_usb_get_phy_mode(np);
 switch (phy_type) {
 case 128:
  err = utmi_phy_probe(tegra_phy, pdev);
  if (err < 0)
   return err;
  break;

 case 129:
  tegra_phy->is_ulpi_phy = 1;

  tegra_phy->reset_gpio =
   of_get_named_gpio(np, "nvidia,phy-reset-gpio", 0);
  if (!gpio_is_valid(tegra_phy->reset_gpio)) {
   dev_err(&pdev->dev,
    "Invalid GPIO: %d\n", tegra_phy->reset_gpio);
   return tegra_phy->reset_gpio;
  }
  tegra_phy->config = ((void*)0);
  break;

 default:
  dev_err(&pdev->dev, "phy_type %u is invalid or unsupported\n",
   phy_type);
  return -EINVAL;
 }

 if (of_find_property(np, "dr_mode", ((void*)0)))
  tegra_phy->mode = usb_get_dr_mode(&pdev->dev);
 else
  tegra_phy->mode = USB_DR_MODE_HOST;

 if (tegra_phy->mode == USB_DR_MODE_UNKNOWN) {
  dev_err(&pdev->dev, "dr_mode is invalid\n");
  return -EINVAL;
 }


 if (of_find_property(np, "vbus-supply", ((void*)0))) {
  tegra_phy->vbus = devm_regulator_get(&pdev->dev, "vbus");
  if (IS_ERR(tegra_phy->vbus))
   return PTR_ERR(tegra_phy->vbus);
 } else {
  dev_notice(&pdev->dev, "no vbus regulator");
  tegra_phy->vbus = ERR_PTR(-ENODEV);
 }

 tegra_phy->u_phy.dev = &pdev->dev;
 err = tegra_usb_phy_init(tegra_phy);
 if (err < 0)
  return err;

 tegra_phy->u_phy.set_suspend = tegra_usb_phy_suspend;

 platform_set_drvdata(pdev, tegra_phy);

 err = usb_add_phy_dev(&tegra_phy->u_phy);
 if (err < 0) {
  tegra_usb_phy_close(tegra_phy);
  return err;
 }

 return 0;
}
