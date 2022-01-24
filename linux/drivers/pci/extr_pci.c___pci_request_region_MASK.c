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
struct pci_devres {int region_mask; } ;
struct pci_dev {int /*<<< orphan*/ * resource; } ;

/* Variables and functions */
 int EBUSY ; 
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char const*,int) ; 
 struct pci_devres* FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char const*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev, int bar,
				const char *res_name, int exclusive)
{
	struct pci_devres *dr;

	if (FUNC3(pdev, bar) == 0)
		return 0;

	if (FUNC2(pdev, bar) & IORESOURCE_IO) {
		if (!FUNC6(FUNC4(pdev, bar),
			    FUNC3(pdev, bar), res_name))
			goto err_out;
	} else if (FUNC2(pdev, bar) & IORESOURCE_MEM) {
		if (!FUNC0(FUNC4(pdev, bar),
					FUNC3(pdev, bar), res_name,
					exclusive))
			goto err_out;
	}

	dr = FUNC1(pdev);
	if (dr)
		dr->region_mask |= 1 << bar;

	return 0;

err_out:
	FUNC5(pdev, "BAR %d: can't reserve %pR\n", bar,
		 &pdev->resource[bar]);
	return -EBUSY;
}