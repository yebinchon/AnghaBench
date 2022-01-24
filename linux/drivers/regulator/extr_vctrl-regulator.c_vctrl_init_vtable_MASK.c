#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vctrl_voltage_table {int dummy; } ;
struct vctrl_voltage_range {int min_uV; int max_uV; } ;
struct TYPE_4__ {struct vctrl_voltage_range ctrl; } ;
struct regulator_desc {int n_voltages; } ;
struct vctrl_data {int ovp_threshold; TYPE_2__* vtable; TYPE_1__ vrange; struct regulator* ctrl_reg; struct regulator_desc desc; } ;
struct regulator {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int ctrl; int out; int ovp_min_sel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct vctrl_data* FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct regulator*) ; 
 int FUNC5 (struct regulator*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vctrl_data*,int) ; 
 int /*<<< orphan*/  vctrl_cmp_ctrl_uV ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct vctrl_data *vctrl = FUNC3(pdev);
	struct regulator_desc *rdesc = &vctrl->desc;
	struct regulator *ctrl_reg = vctrl->ctrl_reg;
	struct vctrl_voltage_range *vrange_ctrl = &vctrl->vrange.ctrl;
	int n_voltages;
	int ctrl_uV;
	int i, idx_vt;

	n_voltages = FUNC4(ctrl_reg);

	rdesc->n_voltages = n_voltages;

	/* determine number of steps within the range of the vctrl regulator */
	for (i = 0; i < n_voltages; i++) {
		ctrl_uV = FUNC5(ctrl_reg, i);

		if (ctrl_uV < vrange_ctrl->min_uV ||
		    ctrl_uV > vrange_ctrl->max_uV)
			rdesc->n_voltages--;
	}

	if (rdesc->n_voltages == 0) {
		FUNC0(&pdev->dev, "invalid configuration\n");
		return -EINVAL;
	}

	vctrl->vtable = FUNC2(&pdev->dev, rdesc->n_voltages,
				     sizeof(struct vctrl_voltage_table),
				     GFP_KERNEL);
	if (!vctrl->vtable)
		return -ENOMEM;

	/* create mapping control <=> output voltage */
	for (i = 0, idx_vt = 0; i < n_voltages; i++) {
		ctrl_uV = FUNC5(ctrl_reg, i);

		if (ctrl_uV < vrange_ctrl->min_uV ||
		    ctrl_uV > vrange_ctrl->max_uV)
			continue;

		vctrl->vtable[idx_vt].ctrl = ctrl_uV;
		vctrl->vtable[idx_vt].out =
			FUNC7(vctrl, ctrl_uV);
		idx_vt++;
	}

	/* we rely on the table to be ordered by ascending voltage */
	FUNC6(vctrl->vtable, rdesc->n_voltages,
	     sizeof(struct vctrl_voltage_table), vctrl_cmp_ctrl_uV,
	     NULL);

	/* pre-calculate OVP-safe downward transitions */
	for (i = rdesc->n_voltages - 1; i > 0; i--) {
		int j;
		int ovp_min_uV = (vctrl->vtable[i].out *
				  (100 - vctrl->ovp_threshold)) / 100;

		for (j = 0; j < i; j++) {
			if (vctrl->vtable[j].out >= ovp_min_uV) {
				vctrl->vtable[i].ovp_min_sel = j;
				break;
			}
		}

		if (j == i) {
			FUNC1(&pdev->dev, "switching down from %duV may cause OVP shutdown\n",
				vctrl->vtable[i].out);
			/* use next lowest voltage */
			vctrl->vtable[i].ovp_min_sel = i - 1;
		}
	}

	return 0;
}