#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v4l2_async_subdev {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  function; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  grp_id; TYPE_1__ entity; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  owner; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * internal_ops; } ;
struct csi2_dev {int /*<<< orphan*/  lock; void* pllref_clk; void* dphy_clk; TYPE_2__ sd; int /*<<< orphan*/  base; void* pix_clk; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMX_MEDIA_GRP_ID_CSI2 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_VID_IF_BRIDGE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  csi2_entity_ops ; 
 int /*<<< orphan*/  csi2_internal_ops ; 
 int /*<<< orphan*/  csi2_parse_endpoint ; 
 int /*<<< orphan*/  csi2_subdev_ops ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csi2_dev* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_2__*,int,unsigned int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	unsigned int sink_port = 0;
	struct csi2_dev *csi2;
	struct resource *res;
	int ret;

	csi2 = FUNC6(&pdev->dev, sizeof(*csi2), GFP_KERNEL);
	if (!csi2)
		return -ENOMEM;

	csi2->dev = &pdev->dev;

	FUNC15(&csi2->sd, &csi2_subdev_ops);
	FUNC14(&csi2->sd, &pdev->dev);
	csi2->sd.internal_ops = &csi2_internal_ops;
	csi2->sd.entity.ops = &csi2_entity_ops;
	csi2->sd.dev = &pdev->dev;
	csi2->sd.owner = THIS_MODULE;
	csi2->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
	FUNC11(csi2->sd.name, DEVICE_NAME, sizeof(csi2->sd.name));
	csi2->sd.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
	csi2->sd.grp_id = IMX_MEDIA_GRP_ID_CSI2;

	csi2->pllref_clk = FUNC4(&pdev->dev, "ref");
	if (FUNC0(csi2->pllref_clk)) {
		FUNC13(&csi2->sd, "failed to get pll reference clock\n");
		ret = FUNC1(csi2->pllref_clk);
		return ret;
	}

	csi2->dphy_clk = FUNC4(&pdev->dev, "dphy");
	if (FUNC0(csi2->dphy_clk)) {
		FUNC13(&csi2->sd, "failed to get dphy clock\n");
		ret = FUNC1(csi2->dphy_clk);
		return ret;
	}

	csi2->pix_clk = FUNC4(&pdev->dev, "pix");
	if (FUNC0(csi2->pix_clk)) {
		FUNC13(&csi2->sd, "failed to get pixel clock\n");
		ret = FUNC1(csi2->pix_clk);
		return ret;
	}

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC13(&csi2->sd, "failed to get platform resources\n");
		return -ENODEV;
	}

	csi2->base = FUNC5(&pdev->dev, res->start, PAGE_SIZE);
	if (!csi2->base)
		return -ENOMEM;

	FUNC8(&csi2->lock);

	ret = FUNC3(csi2->pllref_clk);
	if (ret) {
		FUNC13(&csi2->sd, "failed to enable pllref_clk\n");
		goto rmmutex;
	}

	ret = FUNC3(csi2->dphy_clk);
	if (ret) {
		FUNC13(&csi2->sd, "failed to enable dphy_clk\n");
		goto pllref_off;
	}

	FUNC10(pdev, &csi2->sd);

	ret = FUNC12(
		&csi2->sd, sizeof(struct v4l2_async_subdev),
		&sink_port, 1, csi2_parse_endpoint);
	if (ret)
		goto dphy_off;

	return 0;

dphy_off:
	FUNC2(csi2->dphy_clk);
pllref_off:
	FUNC2(csi2->pllref_clk);
rmmutex:
	FUNC7(&csi2->lock);
	return ret;
}