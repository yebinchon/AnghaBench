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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct imx_media_dev {int /*<<< orphan*/  md; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; } ;
struct TYPE_7__ {int /*<<< orphan*/  function; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ctrl_handler; struct device* dev; int /*<<< orphan*/  name; int /*<<< orphan*/  grp_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  owner; TYPE_1__ entity; int /*<<< orphan*/ * internal_ops; } ;
struct imx7_csi {scalar_t__ irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl_hdlr; struct imx_media_dev* vdev; TYPE_2__ sd; struct imx_media_dev* imxmd; int /*<<< orphan*/  irqlock; struct imx_media_dev* regbase; struct imx_media_dev* mclk; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMX7_CSI_PAD_SRC ; 
 int /*<<< orphan*/  IMX_MEDIA_GRP_ID_CSI ; 
 scalar_t__ FUNC0 (struct imx_media_dev*) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_VID_IF_BRIDGE ; 
 int FUNC1 (struct imx_media_dev*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct imx_media_dev* FUNC3 (struct device*,char*) ; 
 struct imx7_csi* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct imx_media_dev* FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  imx7_csi_entity_ops ; 
 int /*<<< orphan*/  imx7_csi_internal_ops ; 
 int /*<<< orphan*/  imx7_csi_irq_handler ; 
 int /*<<< orphan*/  imx7_csi_parse_endpoint ; 
 int /*<<< orphan*/  imx7_csi_subdev_ops ; 
 struct imx_media_dev* FUNC7 (struct device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct imx_media_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct imx_media_dev*) ; 
 struct imx_media_dev* FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct imx_media_dev*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct imx_media_dev*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct imx_media_dev *imxmd;
	struct imx7_csi *csi;
	int ret;

	csi = FUNC4(&pdev->dev, sizeof(*csi), GFP_KERNEL);
	if (!csi)
		return -ENOMEM;

	csi->dev = dev;

	csi->mclk = FUNC3(&pdev->dev, "mclk");
	if (FUNC0(csi->mclk)) {
		ret = FUNC1(csi->mclk);
		FUNC2(dev, "Failed to get mclk: %d", ret);
		return ret;
	}

	csi->irq = FUNC17(pdev, 0);
	if (csi->irq < 0)
		return csi->irq;

	csi->regbase = FUNC5(pdev, 0);
	if (FUNC0(csi->regbase))
		return FUNC1(csi->regbase);

	FUNC20(&csi->irqlock);
	FUNC16(&csi->lock);

	/* install interrupt handler */
	ret = FUNC6(dev, csi->irq, imx7_csi_irq_handler, 0, "csi",
			       (void *)csi);
	if (ret < 0) {
		FUNC2(dev, "Request CSI IRQ failed.\n");
		goto destroy_mutex;
	}

	/* add media device */
	imxmd = FUNC10(dev, NULL);
	if (FUNC0(imxmd)) {
		ret = FUNC1(imxmd);
		goto destroy_mutex;
	}
	FUNC18(pdev, &csi->sd);

	ret = FUNC12(imxmd, node);
	if (ret < 0 && ret != -ENODEV && ret != -EEXIST)
		goto cleanup;

	ret = FUNC11(imxmd, NULL);
	if (ret < 0)
		goto cleanup;

	csi->imxmd = imxmd;
	FUNC27(&csi->sd, &imx7_csi_subdev_ops);
	FUNC26(&csi->sd, csi);
	csi->sd.internal_ops = &imx7_csi_internal_ops;
	csi->sd.entity.ops = &imx7_csi_entity_ops;
	csi->sd.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
	csi->sd.dev = &pdev->dev;
	csi->sd.owner = THIS_MODULE;
	csi->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
	csi->sd.grp_id = IMX_MEDIA_GRP_ID_CSI;
	FUNC19(csi->sd.name, sizeof(csi->sd.name), "csi");

	csi->vdev = FUNC7(csi->sd.dev, &csi->sd,
						  IMX7_CSI_PAD_SRC);
	if (FUNC0(csi->vdev))
		return FUNC1(csi->vdev);

	FUNC24(&csi->ctrl_hdlr, 0);
	csi->sd.ctrl_handler = &csi->ctrl_hdlr;

	ret = FUNC22(&csi->sd,
						sizeof(struct v4l2_async_subdev),
						NULL, 0,
						imx7_csi_parse_endpoint);
	if (ret)
		goto free;

	return 0;

free:
	FUNC9(csi->vdev);
	FUNC8(csi->vdev);
	FUNC23(&csi->ctrl_hdlr);

cleanup:
	FUNC21(&imxmd->notifier);
	FUNC25(&imxmd->v4l2_dev);
	FUNC14(&imxmd->md);
	FUNC13(&imxmd->md);

destroy_mutex:
	FUNC15(&csi->lock);

	return ret;
}