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
struct myrs_hba {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (struct myrs_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct myrs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct myrs_hba*) ; 
 struct myrs_hba* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct myrs_hba *cs = FUNC3(pdev);

	if (cs == NULL)
		return;

	FUNC4(KERN_NOTICE, cs->host, "Flushing Cache...");
	FUNC2(cs);
	FUNC1(cs);
	FUNC0(cs);
}