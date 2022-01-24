#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; struct platform_device* pdev; scalar_t__ wss_data; int /*<<< orphan*/  venc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  VENC_REV_ID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 struct platform_device* FUNC9 (struct device*) ; 
 TYPE_1__ venc ; 
 int /*<<< orphan*/  venc_dump_regs ; 
 int FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int FUNC12 (struct platform_device*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC9(dev);
	u8 rev_id;
	struct resource *venc_mem;
	int r;

	venc.pdev = pdev;

	FUNC4(&venc.venc_lock);

	venc.wss_data = 0;

	venc_mem = FUNC5(venc.pdev, IORESOURCE_MEM, 0);
	if (!venc_mem) {
		FUNC0("can't get IORESOURCE_MEM VENC\n");
		return -EINVAL;
	}

	venc.base = FUNC2(&pdev->dev, venc_mem->start,
				 FUNC8(venc_mem));
	if (!venc.base) {
		FUNC0("can't ioremap VENC\n");
		return -ENOMEM;
	}

	r = FUNC10(pdev);
	if (r)
		return r;

	FUNC7(&pdev->dev);

	r = FUNC14();
	if (r)
		goto err_runtime_get;

	rev_id = (u8)(FUNC13(VENC_REV_ID) & 0xff);
	FUNC1(&pdev->dev, "OMAP VENC rev %d\n", rev_id);

	FUNC15();

	if (pdev->dev.of_node) {
		r = FUNC12(pdev);
		if (r) {
			FUNC0("Invalid DT data\n");
			goto err_probe_of;
		}
	}

	FUNC3("venc", venc_dump_regs);

	FUNC11(pdev);

	return 0;

err_probe_of:
err_runtime_get:
	FUNC6(&pdev->dev);
	return r;
}