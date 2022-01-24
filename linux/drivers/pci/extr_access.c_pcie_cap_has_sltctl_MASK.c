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

/* Variables and functions */
 int PCI_EXP_FLAGS_SLOT ; 
 int FUNC0 (struct pci_dev const*) ; 
 scalar_t__ FUNC1 (struct pci_dev const*) ; 

__attribute__((used)) static inline bool FUNC2(const struct pci_dev *dev)
{
	return FUNC1(dev) &&
	       FUNC0(dev) & PCI_EXP_FLAGS_SLOT;
}