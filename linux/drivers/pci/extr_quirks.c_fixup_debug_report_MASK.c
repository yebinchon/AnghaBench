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
 scalar_t__ initcall_debug ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,void (*) (struct pci_dev*),unsigned long long) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev, ktime_t calltime,
			       void (*fn)(struct pci_dev *dev))
{
	ktime_t delta, rettime;
	unsigned long long duration;

	rettime = FUNC0();
	delta = FUNC1(rettime, calltime);
	duration = (unsigned long long) FUNC2(delta) >> 10;
	if (initcall_debug || duration > 10000)
		FUNC3(dev, "%pS took %lld usecs\n", fn, duration);
}