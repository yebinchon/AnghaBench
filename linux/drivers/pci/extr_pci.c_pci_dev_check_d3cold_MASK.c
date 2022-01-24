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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  d3cold_allowed; scalar_t__ no_d3cold; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3cold ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, void *data)
{
	bool *d3cold_ok = data;

	if (/* The device needs to be allowed to go D3cold ... */
	    dev->no_d3cold || !dev->d3cold_allowed ||

	    /* ... and if it is wakeup capable to do so from D3cold. */
	    (FUNC0(&dev->dev) &&
	     !FUNC1(dev, PCI_D3cold)) ||

	    /* If it is a bridge it must be allowed to go to D3. */
	    !FUNC2(dev))

		*d3cold_ok = false;

	return !*d3cold_ok;
}