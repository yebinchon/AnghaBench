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
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; int /*<<< orphan*/  hdr_type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC2(struct pci_dev *dev, int cap)
{
	int pos;

	pos = FUNC0(dev->bus, dev->devfn, dev->hdr_type);
	if (pos)
		pos = FUNC1(dev->bus, dev->devfn, pos, cap);

	return pos;
}