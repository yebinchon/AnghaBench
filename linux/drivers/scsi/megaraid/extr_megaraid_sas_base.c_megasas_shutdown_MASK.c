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
struct pci_dev {int dummy; } ;
struct megasas_instance {int unload; int /*<<< orphan*/  pdev; scalar_t__ msix_vectors; TYPE_1__* instancet; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_intr ) (struct megasas_instance*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MR_DCMD_CTRL_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct megasas_instance* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct megasas_instance*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct megasas_instance *instance = FUNC5(pdev);

	if (!instance)
		return;

	instance->unload = 1;

	if (FUNC3(instance))
		goto skip_firing_dcmds;

	FUNC1(instance);
	FUNC2(instance, MR_DCMD_CTRL_SHUTDOWN);

skip_firing_dcmds:
	instance->instancet->disable_intr(instance);
	FUNC0(instance);

	if (instance->msix_vectors)
		FUNC4(instance->pdev);
}