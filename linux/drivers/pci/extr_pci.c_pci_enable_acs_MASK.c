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
 int /*<<< orphan*/  pci_acs_enable ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

void FUNC3(struct pci_dev *dev)
{
	if (!pci_acs_enable)
		goto disable_acs_redir;

	if (!FUNC0(dev))
		goto disable_acs_redir;

	FUNC2(dev);

disable_acs_redir:
	/*
	 * Note: pci_disable_acs_redir() must be called even if ACS was not
	 * enabled by the kernel because it may have been enabled by
	 * platform firmware.  So if we are told to disable it, we should
	 * always disable it after setting the kernel's default
	 * preferences.
	 */
	FUNC1(dev);
}