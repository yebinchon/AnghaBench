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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, int offset,
				     u32 saved_val, int retry, bool force)
{
	u32 val;

	FUNC2(pdev, offset, &val);
	if (!force && val == saved_val)
		return;

	for (;;) {
		FUNC1(pdev, "restoring config space at offset %#x (was %#x, writing %#x)\n",
			offset, val, saved_val);
		FUNC3(pdev, offset, saved_val);
		if (retry-- <= 0)
			return;

		FUNC2(pdev, offset, &val);
		if (val == saved_val)
			return;

		FUNC0(1);
	}
}