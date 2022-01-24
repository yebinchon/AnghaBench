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
struct pci230_board {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct pci230_board const*) ; 
 struct pci230_board const* pci230_boards ; 
 scalar_t__ FUNC1 (struct pci230_board const*,struct pci_dev*) ; 

__attribute__((used)) static const struct pci230_board *FUNC2(struct pci_dev *pci_dev)
{
	unsigned int i;

	for (i = 0; i < FUNC0(pci230_boards); i++)
		if (FUNC1(&pci230_boards[i], pci_dev))
			return &pci230_boards[i];
	return NULL;
}