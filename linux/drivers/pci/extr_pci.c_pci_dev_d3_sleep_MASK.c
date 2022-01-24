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
struct pci_dev {unsigned int d3_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int pci_pm_d3_delay ; 

__attribute__((used)) static void FUNC1(struct pci_dev *dev)
{
	unsigned int delay = dev->d3_delay;

	if (delay < pci_pm_d3_delay)
		delay = pci_pm_d3_delay;

	if (delay)
		FUNC0(delay);
}