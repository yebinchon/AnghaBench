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
struct bdc_pci {int /*<<< orphan*/  bdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct bdc_pci* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pci)
{
	struct bdc_pci *glue = FUNC1(pci);

	FUNC2(glue->bdc);
	FUNC0(pci);
}