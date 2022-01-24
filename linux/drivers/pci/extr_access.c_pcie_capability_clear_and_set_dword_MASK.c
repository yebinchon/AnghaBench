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
 int FUNC0 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct pci_dev *dev, int pos,
					u32 clear, u32 set)
{
	int ret;
	u32 val;

	ret = FUNC0(dev, pos, &val);
	if (!ret) {
		val &= ~clear;
		val |= set;
		ret = FUNC1(dev, pos, val);
	}

	return ret;
}