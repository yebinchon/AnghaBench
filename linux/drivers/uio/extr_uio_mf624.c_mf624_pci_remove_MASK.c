#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uio_info {TYPE_1__* mem; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  internal_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uio_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uio_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct uio_info* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct uio_info*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	struct uio_info *info = FUNC4(dev);

	FUNC2(ALL, info);

	FUNC6(info);
	FUNC5(dev);
	FUNC3(dev);

	FUNC0(info->mem[0].internal_addr);
	FUNC0(info->mem[1].internal_addr);
	FUNC0(info->mem[2].internal_addr);

	FUNC1(info);
}