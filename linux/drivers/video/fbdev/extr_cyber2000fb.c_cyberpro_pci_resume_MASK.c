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
struct cfb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfb_info*) ; 
 struct cfb_info* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev)
{
	struct cfb_info *cfb = FUNC2(dev);

	if (cfb) {
		FUNC1(cfb);
		FUNC0(cfb);
	}

	return 0;
}