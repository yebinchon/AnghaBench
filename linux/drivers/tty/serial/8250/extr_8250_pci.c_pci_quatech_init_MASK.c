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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev)
{
	if (FUNC2(dev->device)) {
		unsigned long base = FUNC3(dev, 0);
		if (base) {
			u32 tmp;

			FUNC1(FUNC0(base + 0x38) | 0x00002000, base + 0x38);
			tmp = FUNC0(base + 0x3c);
			FUNC1(tmp | 0x01000000, base + 0x3c);
			FUNC1(tmp &= ~0x01000000, base + 0x3c);
		}
	}
	return 0;
}