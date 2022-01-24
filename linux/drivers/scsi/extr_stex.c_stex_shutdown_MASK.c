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
struct st_hba {int supports_pm; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ S6flag ; 
 int /*<<< orphan*/  ST_IGNORED ; 
 int /*<<< orphan*/  ST_S5 ; 
 int /*<<< orphan*/  ST_S6 ; 
 struct st_hba* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stex_notifier ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct st_hba *hba = FUNC0(pdev);

	if (hba->supports_pm == 0) {
		FUNC1(hba, ST_IGNORED);
	} else if (hba->supports_pm == 1 && S6flag) {
		FUNC2(&stex_notifier);
		FUNC1(hba, ST_S6);
	} else
		FUNC1(hba, ST_S5);
}