#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  of_node; struct ipu_client_platformdata* platform_data; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct pinctrl {int dummy; } ;
struct ipu_client_platformdata {scalar_t__ csi; int /*<<< orphan*/  of_node; } ;
struct TYPE_11__ {int /*<<< orphan*/  function; int /*<<< orphan*/ * ops; } ;
struct TYPE_12__ {int flags; int /*<<< orphan*/ * ctrl_handler; TYPE_5__* dev; int /*<<< orphan*/  grp_id; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; int /*<<< orphan*/  fwnode; TYPE_1__ entity; int /*<<< orphan*/ * internal_ops; } ;
struct csi_priv {scalar_t__ csi_id; int smfc_id; struct pinctrl* vdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl_hdlr; TYPE_5__* dev; TYPE_2__ sd; int /*<<< orphan*/  ipu; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  eof_timeout_timer; int /*<<< orphan*/  active_output_pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_SRC_PAD_IDMAC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMX_MEDIA_GRP_ID_IPU_CSI0 ; 
 int /*<<< orphan*/  IMX_MEDIA_GRP_ID_IPU_CSI1 ; 
 scalar_t__ FUNC1 (struct pinctrl*) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ; 
 int FUNC2 (struct pinctrl*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  csi_entity_ops ; 
 int /*<<< orphan*/  csi_idmac_eof_timeout ; 
 int /*<<< orphan*/  csi_internal_ops ; 
 int /*<<< orphan*/  csi_subdev_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct csi_priv* FUNC5 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 struct pinctrl* FUNC6 (TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct csi_priv*) ; 
 struct pinctrl* FUNC9 (TYPE_5__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pinctrl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct ipu_client_platformdata *pdata;
	struct pinctrl *pinctrl;
	struct csi_priv *priv;
	int ret;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC16(pdev, &priv->sd);
	priv->dev = &pdev->dev;

	ret = FUNC7(priv->dev, FUNC0(32));
	if (ret)
		return ret;

	/* get parent IPU */
	priv->ipu = FUNC4(priv->dev->parent);

	/* get our CSI id */
	pdata = priv->dev->platform_data;
	priv->csi_id = pdata->csi;
	priv->smfc_id = (priv->csi_id == 0) ? 0 : 2;

	priv->active_output_pad = CSI_SRC_PAD_IDMAC;

	FUNC18(&priv->eof_timeout_timer, csi_idmac_eof_timeout, 0);
	FUNC17(&priv->irqlock);

	FUNC22(&priv->sd, &csi_subdev_ops);
	FUNC21(&priv->sd, priv);
	priv->sd.internal_ops = &csi_internal_ops;
	priv->sd.entity.ops = &csi_entity_ops;
	priv->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
	priv->sd.dev = &pdev->dev;
	priv->sd.fwnode = FUNC15(pdata->of_node);
	priv->sd.owner = THIS_MODULE;
	priv->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
	priv->sd.grp_id = priv->csi_id ?
		IMX_MEDIA_GRP_ID_IPU_CSI1 : IMX_MEDIA_GRP_ID_IPU_CSI0;
	FUNC11(priv->sd.name, sizeof(priv->sd.name),
				    priv->sd.grp_id, FUNC12(priv->ipu));

	priv->vdev = FUNC9(priv->sd.dev, &priv->sd,
						   CSI_SRC_PAD_IDMAC);
	if (FUNC1(priv->vdev))
		return FUNC2(priv->vdev);

	FUNC14(&priv->lock);

	FUNC20(&priv->ctrl_hdlr, 0);
	priv->sd.ctrl_handler = &priv->ctrl_hdlr;

	/*
	 * The IPUv3 driver did not assign an of_node to this
	 * device. As a result, pinctrl does not automatically
	 * configure our pin groups, so we need to do that manually
	 * here, after setting this device's of_node.
	 */
	priv->dev->of_node = pdata->of_node;
	pinctrl = FUNC6(priv->dev);
	if (FUNC1(pinctrl)) {
		ret = FUNC2(pinctrl);
		FUNC3(priv->dev,
			"devm_pinctrl_get_select_default() failed: %d\n", ret);
		if (ret != -ENODEV)
			goto free;
	}

	ret = FUNC8(priv);
	if (ret)
		goto free;

	return 0;
free:
	FUNC19(&priv->ctrl_hdlr);
	FUNC13(&priv->lock);
	FUNC10(priv->vdev);
	return ret;
}