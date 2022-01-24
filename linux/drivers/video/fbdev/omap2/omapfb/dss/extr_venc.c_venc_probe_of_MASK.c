#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  invert_polarity; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_DSS_VENC_TYPE_COMPOSITE ; 
 int /*<<< orphan*/  OMAP_DSS_VENC_TYPE_SVIDEO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (struct device_node*,char*,int*) ; 
 struct device_node* FUNC4 (struct device_node*) ; 
 TYPE_1__ venc ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device_node *ep;
	u32 channels;
	int r;

	ep = FUNC4(node);
	if (!ep)
		return 0;

	venc.invert_polarity = FUNC2(ep, "ti,invert-polarity");

	r = FUNC3(ep, "ti,channels", &channels);
	if (r) {
		FUNC0(&pdev->dev,
			"failed to read property 'ti,channels': %d\n", r);
		goto err;
	}

	switch (channels) {
	case 1:
		venc.type = OMAP_DSS_VENC_TYPE_COMPOSITE;
		break;
	case 2:
		venc.type = OMAP_DSS_VENC_TYPE_SVIDEO;
		break;
	default:
		FUNC0(&pdev->dev, "bad channel propert '%d'\n", channels);
		r = -EINVAL;
		goto err;
	}

	FUNC1(ep);

	return 0;
err:
	FUNC1(ep);

	return 0;
}