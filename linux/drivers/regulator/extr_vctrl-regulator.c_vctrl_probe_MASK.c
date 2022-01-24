#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vctrl_voltage_range {int min_uV; int max_uV; } ;
struct regulator_desc {char* name; int continuous_voltage_range; int n_voltages; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {struct vctrl_voltage_range ctrl; } ;
struct vctrl_data {int sel; int /*<<< orphan*/  rdev; TYPE_2__* vtable; int /*<<< orphan*/  ctrl_reg; struct regulator_desc desc; TYPE_1__ vrange; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_config {struct regulator_init_data const* init_data; struct vctrl_data* driver_data; TYPE_3__* dev; struct device_node* of_node; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 struct vctrl_data* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct regulator_desc*,struct regulator_config*) ; 
 struct regulator_init_data* FUNC5 (TYPE_3__*,struct device_node*,struct regulator_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct vctrl_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  vctrl_ops_cont ; 
 int /*<<< orphan*/  vctrl_ops_non_cont ; 
 int FUNC11 (struct platform_device*,struct vctrl_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct vctrl_data *vctrl;
	const struct regulator_init_data *init_data;
	struct regulator_desc *rdesc;
	struct regulator_config cfg = { };
	struct vctrl_voltage_range *vrange_ctrl;
	int ctrl_uV;
	int ret;

	vctrl = FUNC3(&pdev->dev, sizeof(struct vctrl_data),
			     GFP_KERNEL);
	if (!vctrl)
		return -ENOMEM;

	FUNC6(pdev, vctrl);

	ret = FUNC11(pdev, vctrl);
	if (ret)
		return ret;

	vrange_ctrl = &vctrl->vrange.ctrl;

	rdesc = &vctrl->desc;
	rdesc->name = "vctrl";
	rdesc->type = REGULATOR_VOLTAGE;
	rdesc->owner = THIS_MODULE;

	if ((FUNC8(vctrl->ctrl_reg) == 1) ||
	    (FUNC7(vctrl->ctrl_reg) == -EINVAL)) {
		rdesc->continuous_voltage_range = true;
		rdesc->ops = &vctrl_ops_cont;
	} else {
		rdesc->ops = &vctrl_ops_non_cont;
	}

	init_data = FUNC5(&pdev->dev, np, rdesc);
	if (!init_data)
		return -ENOMEM;

	cfg.of_node = np;
	cfg.dev = &pdev->dev;
	cfg.driver_data = vctrl;
	cfg.init_data = init_data;

	if (!rdesc->continuous_voltage_range) {
		ret = FUNC10(pdev);
		if (ret)
			return ret;

		ctrl_uV = FUNC9(vctrl->ctrl_reg);
		if (ctrl_uV < 0) {
			FUNC2(&pdev->dev, "failed to get control voltage\n");
			return ctrl_uV;
		}

		/* determine current voltage selector from control voltage */
		if (ctrl_uV < vrange_ctrl->min_uV) {
			vctrl->sel = 0;
		} else if (ctrl_uV > vrange_ctrl->max_uV) {
			vctrl->sel = rdesc->n_voltages - 1;
		} else {
			int i;

			for (i = 0; i < rdesc->n_voltages; i++) {
				if (ctrl_uV == vctrl->vtable[i].ctrl) {
					vctrl->sel = i;
					break;
				}
			}
		}
	}

	vctrl->rdev = FUNC4(&pdev->dev, rdesc, &cfg);
	if (FUNC0(vctrl->rdev)) {
		ret = FUNC1(vctrl->rdev);
		FUNC2(&pdev->dev, "failed to register regulator: %d\n", ret);
		return ret;
	}

	return 0;
}