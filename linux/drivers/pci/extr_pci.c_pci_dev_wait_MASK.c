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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,int,char*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, char *reset_type, int timeout)
{
	int delay = 1;
	u32 id;

	/*
	 * After reset, the device should not silently discard config
	 * requests, but it may still indicate that it needs more time by
	 * responding to them with CRS completions.  The Root Port will
	 * generally synthesize ~0 data to complete the read (except when
	 * CRS SV is enabled and the read was for the Vendor ID; in that
	 * case it synthesizes 0x0001 data).
	 *
	 * Wait for the device to return a non-CRS completion.  Read the
	 * Command register instead of Vendor ID so we don't have to
	 * contend with the CRS SV value.
	 */
	FUNC2(dev, PCI_COMMAND, &id);
	while (id == ~0) {
		if (delay > timeout) {
			FUNC3(dev, "not ready %dms after %s; giving up\n",
				 delay - 1, reset_type);
			return -ENOTTY;
		}

		if (delay > 1000)
			FUNC1(dev, "not ready %dms after %s; waiting\n",
				 delay - 1, reset_type);

		FUNC0(delay);
		delay *= 2;
		FUNC2(dev, PCI_COMMAND, &id);
	}

	if (delay > 1000)
		FUNC1(dev, "ready %dms after %s\n", delay - 1,
			 reset_type);

	return 0;
}