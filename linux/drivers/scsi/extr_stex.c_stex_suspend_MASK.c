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
struct st_hba {scalar_t__ cardtype; int supports_pm; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  ST_IGNORED ; 
 struct st_hba* FUNC0 (struct pci_dev*) ; 
 scalar_t__ st_P3 ; 
 scalar_t__ st_yel ; 
 int /*<<< orphan*/  FUNC1 (struct st_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_hba*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, pm_message_t state)
{
	struct st_hba *hba = FUNC0(pdev);

	if ((hba->cardtype == st_yel || hba->cardtype == st_P3)
		&& hba->supports_pm == 1)
		FUNC2(hba, FUNC1(hba, state));
	else
		FUNC2(hba, ST_IGNORED);
	return 0;
}