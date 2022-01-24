#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct soc_device_attribute {char* machine; char* family; int /*<<< orphan*/  soc_id; } ;
struct soc_device {int dummy; } ;
typedef  struct soc_device regmap ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct soc_device*) ; 
 int FUNC1 (struct soc_device*) ; 
 int /*<<< orphan*/  REALVIEW_SYS_ID_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct soc_device_attribute*) ; 
 struct soc_device_attribute* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  realview_arch_attr ; 
 int /*<<< orphan*/  realview_board_attr ; 
 int /*<<< orphan*/  realview_build_attr ; 
 int realview_coreid ; 
 int /*<<< orphan*/  realview_manf_attr ; 
 int FUNC7 (struct soc_device*,int /*<<< orphan*/ ,int*) ; 
 struct soc_device* FUNC8 (struct soc_device_attribute*) ; 
 int /*<<< orphan*/  FUNC9 (struct soc_device*) ; 
 struct soc_device* FUNC10 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct regmap *syscon_regmap;
	struct soc_device *soc_dev;
	struct soc_device_attribute *soc_dev_attr;
	struct device_node *np = pdev->dev.of_node;
	int ret;

	syscon_regmap = FUNC10(np, "regmap");
	if (FUNC0(syscon_regmap))
		return FUNC1(syscon_regmap);

	soc_dev_attr = FUNC5(sizeof(*soc_dev_attr), GFP_KERNEL);
	if (!soc_dev_attr)
		return -ENOMEM;

	ret = FUNC6(np, "compatible",
				      &soc_dev_attr->soc_id);
	if (ret)
		return -EINVAL;

	soc_dev_attr->machine = "RealView";
	soc_dev_attr->family = "Versatile";
	soc_dev = FUNC8(soc_dev_attr);
	if (FUNC0(soc_dev)) {
		FUNC4(soc_dev_attr);
		return -ENODEV;
	}
	ret = FUNC7(syscon_regmap, REALVIEW_SYS_ID_OFFSET,
			  &realview_coreid);
	if (ret)
		return -ENODEV;

	FUNC3(FUNC9(soc_dev), &realview_manf_attr);
	FUNC3(FUNC9(soc_dev), &realview_board_attr);
	FUNC3(FUNC9(soc_dev), &realview_arch_attr);
	FUNC3(FUNC9(soc_dev), &realview_build_attr);

	FUNC2(&pdev->dev, "RealView Syscon Core ID: 0x%08x, HBI-%03x\n",
		 realview_coreid,
		 ((realview_coreid >> 16) & 0xfff));
	/* FIXME: add attributes for SoC to sysfs */
	return 0;
}