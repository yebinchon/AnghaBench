#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dwc2_hsotg {struct dentry* debug_root; TYPE_1__* regset; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct dwc2_hsotg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dr_mode_fops ; 
 int /*<<< orphan*/  FUNC7 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  dwc2_regs ; 
 int /*<<< orphan*/  hw_params_fops ; 
 int /*<<< orphan*/  params_fops ; 

int FUNC8(struct dwc2_hsotg *hsotg)
{
	int			ret;
	struct dentry		*root;

	root = FUNC1(FUNC5(hsotg->dev), NULL);
	hsotg->debug_root = root;

	FUNC2("params", 0444, root, hsotg, &params_fops);
	FUNC2("hw_params", 0444, root, hsotg, &hw_params_fops);
	FUNC2("dr_mode", 0444, root, hsotg, &dr_mode_fops);

	/* Add gadget debugfs nodes */
	FUNC7(hsotg);

	hsotg->regset = FUNC6(hsotg->dev, sizeof(*hsotg->regset),
								GFP_KERNEL);
	if (!hsotg->regset) {
		ret = -ENOMEM;
		goto err;
	}

	hsotg->regset->regs = dwc2_regs;
	hsotg->regset->nregs = FUNC0(dwc2_regs);
	hsotg->regset->base = hsotg->regs;

	FUNC3("regdump", 0444, root, hsotg->regset);

	return 0;
err:
	FUNC4(hsotg->debug_root);
	return ret;
}