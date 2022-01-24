#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_pinctrl_soc_data {int /*<<< orphan*/  uid; } ;
struct TYPE_7__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;
struct byt_gpio {int /*<<< orphan*/  lock; int /*<<< orphan*/  pctl_dev; TYPE_3__ pctl_desc; TYPE_2__* soc_data; struct platform_device* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;
struct TYPE_6__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct byt_gpio*) ; 
 TYPE_3__ byt_pinctrl_desc ; 
 int FUNC4 (struct byt_gpio*,struct intel_pinctrl_soc_data const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct byt_gpio* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,struct byt_gpio*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct byt_gpio*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	const struct intel_pinctrl_soc_data *soc_data = NULL;
	const struct intel_pinctrl_soc_data **soc_table;
	struct acpi_device *acpi_dev;
	struct byt_gpio *vg;
	int i, ret;

	acpi_dev = FUNC0(&pdev->dev);
	if (!acpi_dev)
		return -ENODEV;

	soc_table = (const struct intel_pinctrl_soc_data **)FUNC7(&pdev->dev);

	for (i = 0; soc_table[i]; i++) {
		if (!FUNC13(acpi_dev->pnp.unique_id, soc_table[i]->uid)) {
			soc_data = soc_table[i];
			break;
		}
	}

	if (!soc_data)
		return -ENODEV;

	vg = FUNC8(&pdev->dev, sizeof(*vg), GFP_KERNEL);
	if (!vg)
		return -ENOMEM;

	vg->pdev = pdev;
	ret = FUNC4(vg, soc_data);
	if (ret) {
		FUNC5(&pdev->dev, "failed to set soc data\n");
		return ret;
	}

	vg->pctl_desc		= byt_pinctrl_desc;
	vg->pctl_desc.name	= FUNC6(&pdev->dev);
	vg->pctl_desc.pins	= vg->soc_data->pins;
	vg->pctl_desc.npins	= vg->soc_data->npins;

	vg->pctl_dev = FUNC9(&pdev->dev, &vg->pctl_desc, vg);
	if (FUNC1(vg->pctl_dev)) {
		FUNC5(&pdev->dev, "failed to register pinctrl driver\n");
		return FUNC2(vg->pctl_dev);
	}

	FUNC12(&vg->lock);

	ret = FUNC3(vg);
	if (ret)
		return ret;

	FUNC10(pdev, vg);
	FUNC11(&pdev->dev);

	return 0;
}