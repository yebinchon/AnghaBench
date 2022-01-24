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
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* vc_caps ; 

void FUNC5(struct pci_dev *dev)
{
	int i;

	for (i = 0; i < FUNC0(vc_caps); i++) {
		int len, pos = FUNC3(dev, vc_caps[i].id);

		if (!pos)
			continue;

		len = FUNC4(dev, pos, NULL, false);
		if (FUNC1(dev, vc_caps[i].id, len))
			FUNC2(dev, "unable to preallocate %s save buffer\n",
				vc_caps[i].name);
	}
}