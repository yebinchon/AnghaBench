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
struct pinctrl_dev {int dummy; } ;
struct pcs_function {int nvals; struct pcs_func_vals* vals; int /*<<< orphan*/  name; } ;
struct pcs_func_vals {unsigned int mask; unsigned int val; int /*<<< orphan*/  reg; } ;
struct pcs_device {unsigned int fmask; unsigned int (* read ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  (* write ) (unsigned int,int /*<<< orphan*/ ) ;scalar_t__ bits_per_mux; int /*<<< orphan*/  dev; } ;
struct function_desc {struct pcs_function* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct pcs_device* FUNC1 (struct pinctrl_dev*) ; 
 struct function_desc* FUNC2 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev, unsigned fselector,
	unsigned group)
{
	struct pcs_device *pcs;
	struct function_desc *function;
	struct pcs_function *func;
	int i;

	pcs = FUNC1(pctldev);
	/* If function mask is null, needn't enable it. */
	if (!pcs->fmask)
		return 0;
	function = FUNC2(pctldev, fselector);
	func = function->data;
	if (!func)
		return -EINVAL;

	FUNC0(pcs->dev, "enabling %s function%i\n",
		func->name, fselector);

	for (i = 0; i < func->nvals; i++) {
		struct pcs_func_vals *vals;
		unsigned long flags;
		unsigned val, mask;

		vals = &func->vals[i];
		FUNC3(&pcs->lock, flags);
		val = pcs->read(vals->reg);

		if (pcs->bits_per_mux)
			mask = vals->mask;
		else
			mask = pcs->fmask;

		val &= ~mask;
		val |= (vals->val & mask);
		pcs->write(val, vals->reg);
		FUNC4(&pcs->lock, flags);
	}

	return 0;
}