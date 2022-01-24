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
struct pci_dev {int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(const char *str, struct pci_dev *dev)
{
	FUNC0(&dev->dev,
	       "%s: %s\n"
	       "Please send the output of lspci -vv, this\n"
	       "message (0x%04x,0x%04x,0x%04x,0x%04x), the\n"
	       "manufacturer and name of serial board or\n"
	       "modem board to <linux-serial@vger.kernel.org>.\n",
	       FUNC1(dev), str, dev->vendor, dev->device,
	       dev->subsystem_vendor, dev->subsystem_device);
}