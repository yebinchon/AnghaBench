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
struct pci_dev {int dummy; } ;
struct mvs_info {int /*<<< orphan*/ * regs_ex; void* regs; struct pci_dev* pdev; } ;

/* Variables and functions */
 unsigned long IORESOURCE_MEM ; 
 void* FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (struct pci_dev*,int) ; 
 unsigned long FUNC3 (struct pci_dev*,int) ; 
 unsigned long FUNC4 (struct pci_dev*,int) ; 

int FUNC5(struct mvs_info *mvi, int bar, int bar_ex)
{
	unsigned long res_start, res_len, res_flag, res_flag_ex = 0;
	struct pci_dev *pdev = mvi->pdev;
	if (bar_ex != -1) {
		/*
		 * ioremap main and peripheral registers
		 */
		res_start = FUNC4(pdev, bar_ex);
		res_len = FUNC3(pdev, bar_ex);
		if (!res_start || !res_len)
			goto err_out;

		res_flag_ex = FUNC2(pdev, bar_ex);
		if (res_flag_ex & IORESOURCE_MEM)
			mvi->regs_ex = FUNC0(res_start, res_len);
		else
			mvi->regs_ex = (void *)res_start;
		if (!mvi->regs_ex)
			goto err_out;
	}

	res_start = FUNC4(pdev, bar);
	res_len = FUNC3(pdev, bar);
	if (!res_start || !res_len) {
		FUNC1(mvi->regs_ex);
		mvi->regs_ex = NULL;
		goto err_out;
	}

	res_flag = FUNC2(pdev, bar);
	mvi->regs = FUNC0(res_start, res_len);

	if (!mvi->regs) {
		if (mvi->regs_ex && (res_flag_ex & IORESOURCE_MEM))
			FUNC1(mvi->regs_ex);
		mvi->regs_ex = NULL;
		goto err_out;
	}

	return 0;
err_out:
	return -1;
}