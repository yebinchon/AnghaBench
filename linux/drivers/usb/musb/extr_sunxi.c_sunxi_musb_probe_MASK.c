#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  notifier_call; } ;
struct sunxi_glue {int /*<<< orphan*/  usb_phy; int /*<<< orphan*/  musb_pdev; int /*<<< orphan*/  xceiv; int /*<<< orphan*/  phy; int /*<<< orphan*/  extcon; int /*<<< orphan*/  rst; int /*<<< orphan*/  flags; int /*<<< orphan*/  clk; TYPE_1__ host_nb; int /*<<< orphan*/  work; TYPE_2__* dev; int /*<<< orphan*/  phy_mode; } ;
struct platform_device_info {char* name; int size_data; struct platform_device_info* data; int /*<<< orphan*/  num_res; int /*<<< orphan*/  res; TYPE_2__* parent; int /*<<< orphan*/  id; int /*<<< orphan*/ * config; int /*<<< orphan*/ * platform_ops; int /*<<< orphan*/  mode; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;
struct musb_hdrc_platform_data {char* name; int size_data; struct musb_hdrc_platform_data* data; int /*<<< orphan*/  num_res; int /*<<< orphan*/  res; TYPE_2__* parent; int /*<<< orphan*/  id; int /*<<< orphan*/ * config; int /*<<< orphan*/ * platform_ops; int /*<<< orphan*/  mode; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  pinfo ;
typedef  int /*<<< orphan*/  pdata ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB_HOST ; 
 int /*<<< orphan*/  MUSB_OTG ; 
 int /*<<< orphan*/  MUSB_PERIPHERAL ; 
 int /*<<< orphan*/  PHY_MODE_USB_DEVICE ; 
 int /*<<< orphan*/  PHY_MODE_USB_HOST ; 
 int /*<<< orphan*/  PHY_MODE_USB_OTG ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_HAS_RESET ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_HAS_SRAM ; 
 int /*<<< orphan*/  SUNXI_MUSB_FL_NO_CONFIGDATA ; 
#define  USB_DR_MODE_HOST 130 
#define  USB_DR_MODE_OTG 129 
#define  USB_DR_MODE_PERIPHERAL 128 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct sunxi_glue* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct sunxi_glue*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunxi_musb_hdrc_config ; 
 int /*<<< orphan*/  sunxi_musb_hdrc_config_h3 ; 
 int /*<<< orphan*/  sunxi_musb_host_notifier ; 
 int /*<<< orphan*/  sunxi_musb_ops ; 
 int /*<<< orphan*/  sunxi_musb_work ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct musb_hdrc_platform_data	pdata;
	struct platform_device_info	pinfo;
	struct sunxi_glue		*glue;
	struct device_node		*np = pdev->dev.of_node;
	int ret;

	if (!np) {
		FUNC3(&pdev->dev, "Error no device tree node found\n");
		return -EINVAL;
	}

	glue = FUNC5(&pdev->dev, sizeof(*glue), GFP_KERNEL);
	if (!glue)
		return -ENOMEM;

	FUNC10(&pdata, 0, sizeof(pdata));
	switch (FUNC16(&pdev->dev)) {
#if defined CONFIG_USB_MUSB_DUAL_ROLE || defined CONFIG_USB_MUSB_HOST
	case USB_DR_MODE_HOST:
		pdata.mode = MUSB_HOST;
		glue->phy_mode = PHY_MODE_USB_HOST;
		break;
#endif
#if defined CONFIG_USB_MUSB_DUAL_ROLE || defined CONFIG_USB_MUSB_GADGET
	case USB_DR_MODE_PERIPHERAL:
		pdata.mode = MUSB_PERIPHERAL;
		glue->phy_mode = PHY_MODE_USB_DEVICE;
		break;
#endif
#ifdef CONFIG_USB_MUSB_DUAL_ROLE
	case USB_DR_MODE_OTG:
		pdata.mode = MUSB_OTG;
		glue->phy_mode = PHY_MODE_USB_OTG;
		break;
#endif
	default:
		FUNC3(&pdev->dev, "Invalid or missing 'dr_mode' property\n");
		return -EINVAL;
	}
	pdata.platform_ops	= &sunxi_musb_ops;
	if (!FUNC11(np, "allwinner,sun8i-h3-musb"))
		pdata.config = &sunxi_musb_hdrc_config;
	else
		pdata.config = &sunxi_musb_hdrc_config_h3;

	glue->dev = &pdev->dev;
	FUNC0(&glue->work, sunxi_musb_work);
	glue->host_nb.notifier_call = sunxi_musb_host_notifier;

	if (FUNC11(np, "allwinner,sun4i-a10-musb"))
		FUNC14(SUNXI_MUSB_FL_HAS_SRAM, &glue->flags);

	if (FUNC11(np, "allwinner,sun6i-a31-musb"))
		FUNC14(SUNXI_MUSB_FL_HAS_RESET, &glue->flags);

	if (FUNC11(np, "allwinner,sun8i-a33-musb") ||
	    FUNC11(np, "allwinner,sun8i-h3-musb")) {
		FUNC14(SUNXI_MUSB_FL_HAS_RESET, &glue->flags);
		FUNC14(SUNXI_MUSB_FL_NO_CONFIGDATA, &glue->flags);
	}

	glue->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC1(glue->clk)) {
		FUNC3(&pdev->dev, "Error getting clock: %ld\n",
			FUNC2(glue->clk));
		return FUNC2(glue->clk);
	}

	if (FUNC15(SUNXI_MUSB_FL_HAS_RESET, &glue->flags)) {
		glue->rst = FUNC7(&pdev->dev, NULL);
		if (FUNC1(glue->rst)) {
			if (FUNC2(glue->rst) == -EPROBE_DEFER)
				return -EPROBE_DEFER;
			FUNC3(&pdev->dev, "Error getting reset %ld\n",
				FUNC2(glue->rst));
			return FUNC2(glue->rst);
		}
	}

	glue->extcon = FUNC9(&pdev->dev, 0);
	if (FUNC1(glue->extcon)) {
		if (FUNC2(glue->extcon) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC3(&pdev->dev, "Invalid or missing extcon\n");
		return FUNC2(glue->extcon);
	}

	glue->phy = FUNC6(&pdev->dev, "usb");
	if (FUNC1(glue->phy)) {
		if (FUNC2(glue->phy) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC3(&pdev->dev, "Error getting phy %ld\n",
			FUNC2(glue->phy));
		return FUNC2(glue->phy);
	}

	glue->usb_phy = FUNC17();
	if (FUNC1(glue->usb_phy)) {
		FUNC3(&pdev->dev, "Error registering usb-phy %ld\n",
			FUNC2(glue->usb_phy));
		return FUNC2(glue->usb_phy);
	}

	glue->xceiv = FUNC8(&pdev->dev, USB_PHY_TYPE_USB2);
	if (FUNC1(glue->xceiv)) {
		ret = FUNC2(glue->xceiv);
		FUNC3(&pdev->dev, "Error getting usb-phy %d\n", ret);
		goto err_unregister_usb_phy;
	}

	FUNC13(pdev, glue);

	FUNC10(&pinfo, 0, sizeof(pinfo));
	pinfo.name	 = "musb-hdrc";
	pinfo.id	= PLATFORM_DEVID_AUTO;
	pinfo.parent	= &pdev->dev;
	pinfo.res	= pdev->resource;
	pinfo.num_res	= pdev->num_resources;
	pinfo.data	= &pdata;
	pinfo.size_data = sizeof(pdata);

	glue->musb_pdev = FUNC12(&pinfo);
	if (FUNC1(glue->musb_pdev)) {
		ret = FUNC2(glue->musb_pdev);
		FUNC3(&pdev->dev, "Error registering musb dev: %d\n", ret);
		goto err_unregister_usb_phy;
	}

	return 0;

err_unregister_usb_phy:
	FUNC18(glue->usb_phy);
	return ret;
}