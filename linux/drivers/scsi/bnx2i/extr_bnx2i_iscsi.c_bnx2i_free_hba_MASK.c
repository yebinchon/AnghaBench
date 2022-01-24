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
struct bnx2i_hba {int /*<<< orphan*/ * regview; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  ep_destroy_list; int /*<<< orphan*/  ep_active_list; int /*<<< orphan*/  ep_ofld_list; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct bnx2i_hba *hba)
{
	struct Scsi_Host *shost = hba->shost;

	FUNC4(shost);
	FUNC0(&hba->ep_ofld_list);
	FUNC0(&hba->ep_active_list);
	FUNC0(&hba->ep_destroy_list);
	FUNC5(hba->pcidev);

	if (hba->regview) {
		FUNC6(hba->pcidev, hba->regview);
		hba->regview = NULL;
	}
	FUNC1(hba);
	FUNC2(hba);
	FUNC3(shost);
}