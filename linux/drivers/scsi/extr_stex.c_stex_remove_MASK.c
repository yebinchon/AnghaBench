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
struct st_hba {int /*<<< orphan*/  host; int /*<<< orphan*/  mu_status; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_NO_CONNECT ; 
 int /*<<< orphan*/  MU_STATE_NOCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct st_hba* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct st_hba*) ; 
 int /*<<< orphan*/  stex_notifier ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct st_hba *hba = FUNC1(pdev);

	hba->mu_status = MU_STATE_NOCONNECT;
	FUNC2(hba, DID_NO_CONNECT);
	FUNC5(hba->host);

	FUNC3(hba->host);

	FUNC6(hba);

	FUNC4(hba->host);

	FUNC0(pdev);

	FUNC7(&stex_notifier);
}