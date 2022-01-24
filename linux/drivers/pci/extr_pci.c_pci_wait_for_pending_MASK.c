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
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 

int FUNC2(struct pci_dev *dev, int pos, u16 mask)
{
	int i;

	/* Wait for Transaction Pending bit clean */
	for (i = 0; i < 4; i++) {
		u16 status;
		if (i)
			FUNC0((1 << (i - 1)) * 100);

		FUNC1(dev, pos, &status);
		if (!(status & mask))
			return 1;
	}

	return 0;
}