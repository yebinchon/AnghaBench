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
 int IORESOURCE_MEM ; 
 int MAX_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,void*) ; 
 int FUNC1 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev, void **addr_array)
{
	int i;

	for (i = 0; i < MAX_BASE_ADDRESS; i++)
		if ((FUNC1(dev, i) & IORESOURCE_MEM) &&
								addr_array[i])
			FUNC0(dev, addr_array[i]);
}