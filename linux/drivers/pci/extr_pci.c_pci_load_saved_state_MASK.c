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
typedef  int /*<<< orphan*/  u8 ;
struct pci_saved_state {struct pci_cap_saved_data* cap; int /*<<< orphan*/  config_space; } ;
struct pci_dev {int state_saved; int /*<<< orphan*/  saved_config_space; } ;
struct TYPE_2__ {int size; int /*<<< orphan*/  data; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;
struct pci_cap_saved_data {int size; int /*<<< orphan*/  data; int /*<<< orphan*/  cap_extended; int /*<<< orphan*/  cap_nr; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pci_cap_saved_state* FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct pci_dev *dev,
			 struct pci_saved_state *state)
{
	struct pci_cap_saved_data *cap;

	dev->state_saved = false;

	if (!state)
		return 0;

	FUNC1(dev->saved_config_space, state->config_space,
	       sizeof(state->config_space));

	cap = state->cap;
	while (cap->size) {
		struct pci_cap_saved_state *tmp;

		tmp = FUNC0(dev, cap->cap_nr, cap->cap_extended);
		if (!tmp || tmp->cap.size != cap->size)
			return -EINVAL;

		FUNC1(tmp->cap.data, cap->data, tmp->cap.size);
		cap = (struct pci_cap_saved_data *)((u8 *)cap +
		       sizeof(struct pci_cap_saved_data) + cap->size);
	}

	dev->state_saved = true;
	return 0;
}