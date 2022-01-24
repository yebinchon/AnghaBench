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
struct dwc3 {TYPE_1__* regset; struct dentry* root; int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/  dbg_lsp_select; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {scalar_t__ base; int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_USB_DWC3_DUAL_ROLE ; 
 int /*<<< orphan*/  CONFIG_USB_DWC3_GADGET ; 
 scalar_t__ DWC3_GLOBALS_REGS_START ; 
 int /*<<< orphan*/  DWC3_LSP_MUX_UNSELECTED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,struct dwc3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct dentry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc3*,struct dentry*) ; 
 int /*<<< orphan*/  dwc3_link_state_fops ; 
 int /*<<< orphan*/  dwc3_lsp_fops ; 
 int /*<<< orphan*/  dwc3_mode_fops ; 
 int /*<<< orphan*/  dwc3_regs ; 
 int /*<<< orphan*/  dwc3_testmode_fops ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 

void FUNC8(struct dwc3 *dwc)
{
	struct dentry		*root;

	dwc->regset = FUNC7(sizeof(*dwc->regset), GFP_KERNEL);
	if (!dwc->regset)
		return;

	dwc->dbg_lsp_select = DWC3_LSP_MUX_UNSELECTED;

	dwc->regset->regs = dwc3_regs;
	dwc->regset->nregs = FUNC0(dwc3_regs);
	dwc->regset->base = dwc->regs - DWC3_GLOBALS_REGS_START;

	root = FUNC2(FUNC5(dwc->dev), NULL);
	dwc->root = root;

	FUNC4("regdump", S_IRUGO, root, dwc->regset);

	FUNC3("lsp_dump", S_IRUGO | S_IWUSR, root, dwc,
			    &dwc3_lsp_fops);

	if (FUNC1(CONFIG_USB_DWC3_DUAL_ROLE)) {
		FUNC3("mode", S_IRUGO | S_IWUSR, root, dwc,
				    &dwc3_mode_fops);
	}

	if (FUNC1(CONFIG_USB_DWC3_DUAL_ROLE) ||
			FUNC1(CONFIG_USB_DWC3_GADGET)) {
		FUNC3("testmode", S_IRUGO | S_IWUSR, root, dwc,
				    &dwc3_testmode_fops);
		FUNC3("link_state", S_IRUGO | S_IWUSR, root, dwc,
				    &dwc3_link_state_fops);
		FUNC6(dwc, root);
	}
}