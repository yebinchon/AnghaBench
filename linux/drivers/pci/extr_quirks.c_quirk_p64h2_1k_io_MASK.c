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
struct pci_dev {int io_window_1k; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	u16 en1k;

	FUNC1(dev, 0x40, &en1k);

	if (en1k & 0x200) {
		FUNC0(dev, "Enable I/O Space to 1KB granularity\n");
		dev->io_window_1k = 1;
	}
}