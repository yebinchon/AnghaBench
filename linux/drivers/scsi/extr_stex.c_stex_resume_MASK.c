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
struct st_hba {int /*<<< orphan*/  mu_status; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MU_STATE_STARTING ; 
 struct st_hba* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_hba*) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *pdev)
{
	struct st_hba *hba = FUNC0(pdev);

	hba->mu_status = MU_STATE_STARTING;
	FUNC1(hba);
	return 0;
}