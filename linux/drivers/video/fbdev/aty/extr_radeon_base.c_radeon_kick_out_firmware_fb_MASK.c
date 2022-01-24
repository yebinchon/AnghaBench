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
struct pci_dev {int dummy; } ;
struct apertures_struct {TYPE_1__* ranges; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct apertures_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct apertures_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct apertures_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	struct apertures_struct *ap;

	ap = FUNC0(1);
	if (!ap)
		return -ENOMEM;

	ap->ranges[0].base = FUNC3(pdev, 0);
	ap->ranges[0].size = FUNC2(pdev, 0);

	FUNC4(ap, KBUILD_MODNAME, false);

	FUNC1(ap);

	return 0;
}