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
struct pci_epf_test {int /*<<< orphan*/  cmd_handler; } ;
struct pci_epf {int dummy; } ;

/* Variables and functions */
 struct pci_epf_test* FUNC0 (struct pci_epf*) ; 
 int /*<<< orphan*/  kpcitest_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_epf *epf)
{
	struct pci_epf_test *epf_test = FUNC0(epf);

	FUNC2(kpcitest_workqueue, &epf_test->cmd_handler,
			   FUNC1(1));
}