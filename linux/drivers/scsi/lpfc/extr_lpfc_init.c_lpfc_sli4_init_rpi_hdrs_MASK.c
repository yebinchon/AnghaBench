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
struct lpfc_rpi_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ extents_in_use; int /*<<< orphan*/  rpi_hdrs_in_use; int /*<<< orphan*/  lpfc_rpi_hdr_list; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_MBOX ; 
 int LOG_SLI ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*) ; 
 struct lpfc_rpi_hdr* FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 

int
FUNC4(struct lpfc_hba *phba)
{
	int rc = 0;
	struct lpfc_rpi_hdr *rpi_hdr;

	FUNC0(&phba->sli4_hba.lpfc_rpi_hdr_list);
	if (!phba->sli4_hba.rpi_hdrs_in_use)
		return rc;
	if (phba->sli4_hba.extents_in_use)
		return -EIO;

	rpi_hdr = FUNC2(phba);
	if (!rpi_hdr) {
		FUNC1(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
				"0391 Error during rpi post operation\n");
		FUNC3(phba);
		rc = -ENODEV;
	}

	return rc;
}