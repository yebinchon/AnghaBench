#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_device {int device_caps; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  (* release ) (struct video_device*) ;int /*<<< orphan*/  name; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct amvdec_core {int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l2_dev; struct device* dev_dec; struct video_device* vdev_dec; int /*<<< orphan*/  platform; struct device* dev; void* vdec_hevc_clk; void* vdec_1_clk; void* dos_clk; void* dos_parser_clk; void* canvas; void* regmap_ao; void* esparser_base; void* dos_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M_MPLANE ; 
 int /*<<< orphan*/  VFL_DIR_M2M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 struct amvdec_core* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct amvdec_core*) ; 
 int FUNC7 (struct platform_device*,struct amvdec_core*) ; 
 void* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,char*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct amvdec_core*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vdec_dt_match ; 
 int /*<<< orphan*/  vdec_fops ; 
 int /*<<< orphan*/  vdec_ioctl_ops ; 
 int /*<<< orphan*/  vdec_isr ; 
 int /*<<< orphan*/  vdec_threaded_isr ; 
 struct video_device* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct video_device*) ; 
 int FUNC19 (struct video_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct video_device*,struct amvdec_core*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct video_device *vdev;
	struct amvdec_core *core;
	struct resource *r;
	const struct of_device_id *of_id;
	int irq;
	int ret;

	core = FUNC5(dev, sizeof(*core), GFP_KERNEL);
	if (!core)
		return -ENOMEM;

	core->dev = dev;
	FUNC13(pdev, core);

	r = FUNC12(pdev, IORESOURCE_MEM, "dos");
	core->dos_base = FUNC4(dev, r);
	if (FUNC0(core->dos_base)) {
		FUNC2(dev, "Couldn't remap DOS memory\n");
		return FUNC1(core->dos_base);
	}

	r = FUNC12(pdev, IORESOURCE_MEM, "esparser");
	core->esparser_base = FUNC4(dev, r);
	if (FUNC0(core->esparser_base)) {
		FUNC2(dev, "Couldn't remap ESPARSER memory\n");
		return FUNC1(core->esparser_base);
	}

	core->regmap_ao =
		FUNC15(dev->of_node,
						"amlogic,ao-sysctrl");
	if (FUNC0(core->regmap_ao)) {
		FUNC2(dev, "Couldn't regmap AO sysctrl\n");
		return FUNC1(core->regmap_ao);
	}

	core->canvas = FUNC8(dev);
	if (FUNC0(core->canvas))
		return FUNC1(core->canvas);

	core->dos_parser_clk = FUNC3(dev, "dos_parser");
	if (FUNC0(core->dos_parser_clk))
		return -EPROBE_DEFER;

	core->dos_clk = FUNC3(dev, "dos");
	if (FUNC0(core->dos_clk))
		return -EPROBE_DEFER;

	core->vdec_1_clk = FUNC3(dev, "vdec_1");
	if (FUNC0(core->vdec_1_clk))
		return -EPROBE_DEFER;

	core->vdec_hevc_clk = FUNC3(dev, "vdec_hevc");
	if (FUNC0(core->vdec_hevc_clk))
		return -EPROBE_DEFER;

	irq = FUNC11(pdev, "vdec");
	if (irq < 0)
		return irq;

	ret = FUNC6(core->dev, irq, vdec_isr,
					vdec_threaded_isr, IRQF_ONESHOT,
					"vdec", core);
	if (ret)
		return ret;

	ret = FUNC7(pdev, core);
	if (ret)
		return ret;

	ret = FUNC16(dev, &core->v4l2_dev);
	if (ret) {
		FUNC2(dev, "Couldn't register v4l2 device\n");
		return -ENOMEM;
	}

	vdev = FUNC17();
	if (!vdev) {
		ret = -ENOMEM;
		goto err_vdev_release;
	}

	of_id = FUNC10(vdec_dt_match, dev->of_node);
	core->platform = of_id->data;
	core->vdev_dec = vdev;
	core->dev_dec = dev;
	FUNC9(&core->lock);

	FUNC14(vdev->name, "meson-video-decoder", sizeof(vdev->name));
	vdev->release = video_device_release;
	vdev->fops = &vdec_fops;
	vdev->ioctl_ops = &vdec_ioctl_ops;
	vdev->vfl_dir = VFL_DIR_M2M;
	vdev->v4l2_dev = &core->v4l2_dev;
	vdev->lock = &core->lock;
	vdev->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;

	FUNC20(vdev, core);

	ret = FUNC19(vdev, VFL_TYPE_GRABBER, -1);
	if (ret) {
		FUNC2(dev, "Failed registering video device\n");
		goto err_vdev_release;
	}

	return 0;

err_vdev_release:
	FUNC18(vdev);
	return ret;
}