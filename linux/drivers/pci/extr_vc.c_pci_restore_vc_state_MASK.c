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
struct pci_cap_saved_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_cap_saved_state* FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,struct pci_cap_saved_state*,int) ; 
 TYPE_1__* vc_caps ; 

void FUNC4(struct pci_dev *dev)
{
	int i;

	for (i = 0; i < FUNC0(vc_caps); i++) {
		int pos;
		struct pci_cap_saved_state *save_state;

		pos = FUNC1(dev, vc_caps[i].id);
		save_state = FUNC2(dev, vc_caps[i].id);
		if (!save_state || !pos)
			continue;

		FUNC3(dev, pos, save_state, false);
	}
}