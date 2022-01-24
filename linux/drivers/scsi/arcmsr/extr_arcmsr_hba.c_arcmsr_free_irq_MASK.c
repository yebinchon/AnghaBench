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
struct AdapterControlBlock {int vector_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev,
		struct AdapterControlBlock *acb)
{
	int i;

	for (i = 0; i < acb->vector_count; i++)
		FUNC0(FUNC2(pdev, i), acb);
	FUNC1(pdev);
}