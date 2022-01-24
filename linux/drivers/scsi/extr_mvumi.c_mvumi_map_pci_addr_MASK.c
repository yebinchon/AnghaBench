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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 int MAX_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,void**) ; 
 void* FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev, void **addr_array)
{
	int i;

	for (i = 0; i < MAX_BASE_ADDRESS; i++) {
		if (FUNC4(dev, i) & IORESOURCE_MEM) {
			addr_array[i] = FUNC3(dev, i, 0);
			if (!addr_array[i]) {
				FUNC1(&dev->dev, "failed to map Bar[%d]\n",
									i);
				FUNC2(dev, addr_array);
				return -ENOMEM;
			}
		} else
			addr_array[i] = NULL;

		FUNC0(&dev->dev, "Bar %d : %p.\n", i, addr_array[i]);
	}

	return 0;
}