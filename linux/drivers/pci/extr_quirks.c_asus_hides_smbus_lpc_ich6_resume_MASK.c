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
 int /*<<< orphan*/  asus_hides_smbus ; 
 int /*<<< orphan*/ * asus_rcba_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	if (FUNC1(!asus_hides_smbus || !asus_rcba_base))
		return;

	FUNC0(asus_rcba_base);
	asus_rcba_base = NULL;
	FUNC2(dev, "Enabled ICH6/i801 SMBus device\n");
}