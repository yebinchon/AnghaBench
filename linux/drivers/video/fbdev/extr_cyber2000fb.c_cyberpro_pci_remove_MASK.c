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
struct cfb_info {int /*<<< orphan*/  region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfb_info*) ; 
 struct cfb_info* int_cfb_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cfb_info* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	struct cfb_info *cfb = FUNC3(dev);

	if (cfb) {
		FUNC0(cfb);
		FUNC2(cfb->region);
		FUNC1(cfb);

		if (cfb == int_cfb_info)
			int_cfb_info = NULL;

		FUNC4(dev);
	}
}