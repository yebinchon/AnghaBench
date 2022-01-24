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
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ initcall_debug ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,void (*) (struct pci_dev*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t FUNC3(struct pci_dev *dev,
				 void (*fn)(struct pci_dev *dev))
{
	if (initcall_debug)
		FUNC1(dev, "calling  %pS @ %i\n", fn, FUNC2(current));

	return FUNC0();
}